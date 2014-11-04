import module namespace file = "http://expath.org/ns/file";

declare function local:description($description as string) as element(description) {
    <description type="xhtml" xml:lang="en">
        {parse-xml-fragment($description)}
    </description>
};

declare function local:to-xml($swagger)
{
    let $scheme := substring-before($swagger.basePath, "://")
    return
    <swagger swagger="{$swagger.swaggerVersion}"
                host="{substring-before(substring-after($swagger.basePath, "://"), "/")}"
                basePath="/{substring-after(substring-after($swagger.basePath, "://"), "/")}">
        <info>
            <title>API Title</title>
            {local:description($swagger.description)}
            <version>{$swagger.apiVersion}</version>
        </info>
        <schemes>
            <scheme>{$scheme}</scheme>
        </schemes>
        <produces>
            {
                for $produce in $swagger.produces()
                return <mime>{$produce}</mime>
            }
        </produces>
        <resources>
            {
                for $api in $swagger.apis()
                return <resource path="{$api.path}">
                    {local:description(if($api.description) then $api.description else "")}
                    {
                        for $operation in $api.operations()
                        return <method method="{$operation.method}" nickname="{$operation.nickname}">
                            <summary>{$operation.summary}</summary>
                            {local:description("Description")}
                            <parameters>
                                {
                                    for $param in $operation.parameters()
                                    return <parameter name="{$param.name}" required="{if($param.required eq true) then true else false}" type="{$param.paramType}" value-type="{$param.type}">
                                        {local:description(if($param.description) then $param.description else "")}
                                        {
                                            if($param.enum) then
                                                <enum>{
                                                    for $val in $param.enum()
                                                    return <value>{$val}</value>
                                                }</enum>
                                            else ()
                                        }
                                    </parameter>
                                }
                            </parameters>
                            <errors>
                                {
                                    for $message in if($operation.responseMessages) then $operation.responseMessages() else ()
                                    return <error code="{$message.code}"  reponse-model="{$message.responseModel}">
                                        <description>{$message.message}</description>
                                    </error>
                                }
                            </errors>
                            <successes>
                                {
                                    for $message in if($operation.successMessages) then $operation.successMessages() else ()
                                    return <error code="{$message.code}"  reponse-model="{$message.responseModel}">
                                        <description>{$message.message}</description>
                                    </error>
                                }
                            </successes>
                            {
                                if($operation.examples) then
                            <examples>
                                {
                                    for $example in $operation.examples()
                                    return <example title="{$example.title}">
                                        <description>{$example.description}</description>
                                        <request>{$example.request}</request>
                                        <response>{$example.response}</response>
                                    </example>
                                }
                            </examples>
                                else ()
                            }
                        </method>
                    }
                </resource>
            }
        </resources>
    </swagger>
};

for $file in file:list(".", false, "*.json")
let $swagger := parse-json(file:read-text($file))
let $xml := local:to-xml($swagger)
let $destination := "xml/" || substring-before($file, ".json") || ".xml"
return file:write-text(trace($destination, "Write"), serialize($xml, ()));
"Done"