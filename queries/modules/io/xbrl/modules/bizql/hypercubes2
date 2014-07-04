jsoniq version "1.0";

module namespace hypercubes2 = "http://xbrl.io/modules/bizql/hypercubes2";

import module namespace hypercubes = "http://xbrl.io/modules/bizql/hypercubes";

declare function hypercubes2:modify-hypercube(
    $hypercube as object,
    $options as object?) as object
{
    let $options :=
    {|
        for $dimension in keys(($hypercube.Aspects, $options))
        let $hypercube-metadata := $hypercube.Aspects.$dimension
        let $new-metadata := $options.$dimension
        return {
            $dimension : if(exists($new-metadata))
            then
                $new-metadata
            else {|
                { Type : $hypercube.Aspects.$dimension.Type }[$hypercube-metadata.Kind eq "TypedDimension"],
                let $hypercube-domain := descendant-objects(values($hypercube-metadata.Domains)).Name
                where exists($hypercube-domain)
                return { Domain : [ $hypercube-domain ] },
                let $hypercube-default := $hypercube-metadata.Default
                where exists($hypercube-default)
                return { Default : $hypercube-default }
            |}
        }
    |}
    return hypercubes:user-defined-hypercube($options)
};

declare function hypercubes2:merge($hypercubes as object*) as object
{
    hypercubes:user-defined-hypercube({|
        for $aspect in keys($hypercubes.Aspects)
        let $default := distinct-values($hypercubes.Aspects.$aspect.Default)
        let $domain := distinct-values((descendant-objects($hypercubes.Aspects.$aspect.Domains).Name))
        return {
            $aspect : {|
                { Default: $default}[exists($default)],
                { Domain: [ distinct-values(($domain, $default)) ]}[exists($domain)]
            |}
        }
    |})
};