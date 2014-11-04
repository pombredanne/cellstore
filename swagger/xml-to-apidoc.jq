import module namespace file = "http://expath.org/ns/file";

declare function local:to-html($description as element(description)) as string {
    serialize($description/node(), ())
};

declare function local:to-swagger1($xml as element(swagger)) as object {
    {
        apiVersion: $xml/info/version/string(),
        swaggerVersion: string($xml/@swagger),
        basePath: $xml/schemes/scheme[1]/string() || "://" || string($xml/@host) || string($xml/@basePath),
        resourcePath: "",
        produces: [
            $xml/produces/mime/string()
        ],
        description: local:to-html($xml/info/description),
        api: [
            for $resource in $xml/resources/resource
            return {
                path: string($resource/@path),
                description: local:to-html($resource/description),
                operations: [
                    for $method in $resource/method
                    return {
                        method: string($method/@method),
                        nickname: string($method/@nickname),
                        summary: $method/summary/string(),
                        parameters: [
                            for $param in $method/parameters/parameter
                            return {| ({
                                name: string($param/@name),
                                description: local:to-html($param/description),
                                required: if(string($param/@required) eq "true") then true else false,
                                type: string($param/@value-type),
                                paramType: string($param/@type)
                            }, if($param/enum) then {
                                enum: [
                                    $param/enum/value/string()
                                ] } else ()) |}
                        ],
                        responseMessages: [
                            for $error in $method/errors/error
                            return {
                                code: number($error/@code),
                                message: local:to-html($error/description)
                            }
                        ],
                        successMessages: [
                            for $success in $method/successes/success
                            return {
                                code: number($success/@code),
                                message: local:to-html($success/description)
                            }
                        ],
                        examples: [
                            for $example in $method/examples/example
                            return {
                                title: string($example/@title),
                                description: local:to-html($example/description),
                                request: $example/request/string(),
                                response: $example/response/string()
                            }
                        ]
                    }
                ]
            }
        ]
    }
};

for $file in file:list("xml/", false, "*.xml")
let $swagger := parse-xml(file:read-text("xml/" || $file))/swagger
let $json := local:to-swagger1($swagger)
let $destination := "swagger1/" || substring-before($file, ".xml") || ".json"
return file:write-text(trace($destination, "Write"), serialize($json, ()));
"Done"