import module namespace file = "http://expath.org/ns/file";

declare function local:to-html($description as element(description)) as string {
    serialize($description/node(), ())
};

declare function local:to-swagger2($xml as element(swagger)) as object {
    {
        swagger: string($xml/@swagger),
        info: {
            title: $xml/info/title/string(),
            description: local:to-html($xml/info/description),
            version: $xml/info/version/string()
        },
        host: string($xml/@host),
        basePath: string($xml/@basePath),
        schemes: [$xml/schemes/scheme/string()]
        produces: [
            $xml/produces/mime/string()
        ],
        paths: {|
            for $resource in $xml/resources/resource
            return {
                string($resource/@path) : {|
                    for $method in $resource/method
                    return {
                        string($method/@method): {
                            summary: $method/summary/string(),
                            description: local:to-html($method/description),
                            parameters: [
                                for $param in $method/parameters/parameter
                                return {
                                    name: string($param/@name),
                                    in: string($param/@type),
                                    description: local:to-html($param/description),
                                    required: if(string($param/@required) eq "true") then true else false,
                                    type: string($param/@value-type)
                                }
                            ],
                            responses: {|
                                for $reponse in ($method/errors/error, $method/successes/success)
                                return {
                                    string($reponse/@code) : {
                                        description: local:to-html($reponse/description)
                                    }
                                }
                            |}
                        }
                    }
                |}
            }
        |}
    }
};

for $file in file:list("xml/", false, "*.xml")
let $swagger := parse-xml(file:read-text("xml/" || $file))/swagger
let $json := local:to-swagger1($swagger)
let $destination := "swagger2/" || substring-before($file, ".xml") || ".json"
return file:write-text(trace($destination, "Write"), serialize($json, ()));
"Done"