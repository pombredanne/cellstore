jsoniq version "1.0";

module namespace reports = "http://apps.28.io/reports";

declare variable $reports:INFO := "INFO";
declare variable $reports:WARNING := "WARNING";
declare variable $reports:ERROR := "ERROR";

declare variable $reports:CONTEXT-REPORT := "Report";
declare variable $reports:CONTEXT-NETWORKS-PRESENTATION := "Presentation";
declare variable $reports:CONTEXT-NETWORKS-CONCEPTMAP := "ConceptMap";
declare variable $reports:CONTEXT-HYPERCUBES := "Hypercubes";
declare variable $reports:CONTEXT-RULES := "Rules";

declare %private function reports:message(
  $type as string,
  $context as string,
  $identifier as string,
  $message as string)
  as object
{
    reports:message($type, $context, $identifier, $message, ())
};

declare %private function reports:message(
  $type as string,
  $context as string,
  $identifier as string,
  $message as string,
  $details as item*)
as object
{
    {|
        {
            type: $type,
            context: $context,
            identifier: $identifier,
            message: $message
        }, 
        if(exists($details))
        then { details: $details }
        else ()
    |}
};


declare function reports:labels-checks($report as object)
as object*
{
    let $all-concepts := descendant-objects($report)[not(empty($$.Name))]
    for $concept in $all-concepts
    where not(substring-before($concept.Name, ":") = ("us-gaap", "dei"))
    group by $concept.Name
    let $labels := distinct-values($concept.Label)
    return
        switch(true)
        
        case(empty($labels))
        return reports:message($reports:WARNING, 
                               $reports:CONTEXT-REPORT, 
                               $concept[1].Name,
                               "No Label for '" || $concept[1].Name || "'")
        
        case(count($labels) gt 1)
        return reports:message($reports:WARNING, 
                               $reports:CONTEXT-REPORT, 
                               $concept[1].Name, 
                               "Different Labels for '" || $concept[1].Name || "' (" || string-join($labels ! ("'" || $$ || "'"), ", ") || ")")
        
        default return ()
};


declare function reports:concepts-checks($report as object)
as object*
{
    (: check whether all indexes match the concept name -> index : { Name: index } :)
    let $all-hypercube-mappings := descendant-objects($report.Hypercubes) ! ($$.Members)
    return
        (
            for $key in keys($all-hypercube-mappings)
            for $concept in $all-hypercube-mappings.$key
            return 
                if($concept.Name eq $key)
                then ()
                else reports:message($reports:ERROR,
                                     $reports:CONTEXT-HYPERCUBES,
                                     $key, 
                                     "Concept.Name ('" || $concept.Name || "') does not match index key ('" || $key || "') in hypercube",
                                     $concept)
        ),
    
    (: check whether all used concepts are in the hypercube :)
    let $hypercube-concepts as string* := distinct-values(values($report.Hypercubes).Aspects."xbrl:Concept".Members[].Name)
    return
        (
            let $pres-concepts := 
                descendant-objects($report.Networks[][$$.ShortName eq "Presentation"].Trees).Name
            for $concept-names in $pres-concepts
            group by $concept-name := $concept-names
            return
                (
                    if(count($concept-names) gt 1)
                    then reports:message($reports:INFO,
                                         $reports:CONTEXT-NETWORKS-PRESENTATION,
                                         $concept-name, 
                                         "Duplicate concept: '" || $concept-name || "'")
                    else (),
                    if ($concept-name = $hypercube-concepts)
                    then ()
                    else reports:message($reports:ERROR,
                                         $reports:CONTEXT-NETWORKS-PRESENTATION,
                                         $concept-name, 
                                         "Concept is not in the hypercubes' value space: '" || $concept-name || "'")
                ),
                
            let $rule-concepts := $report.Rules[] ! ($$.ComputableConcepts[])
            for $concept-name in $rule-concepts
            let $rules := $report.Rules[][$$.ComputableConcepts[] = $concept-name]
            return
                (
                    if(count($rules) gt 1)
                    then reports:message($reports:ERROR,
                                         $reports:CONTEXT-RULES,
                                         ($rules._id),
                                         "Concept: '" || $concept-name || "' is computable by multiple rules: " 
                                                      || string-join(($rules ! ("'" || $$.Label || "'")), ","),
                                         $rules)
                    else (),
                    if ($concept-name = $hypercube-concepts)
                    then ()
                    else reports:message($reports:ERROR,
                                         $reports:CONTEXT-RULES,
                                         ($concept-name),
                                         "Concept is computable, but not in the hypercubes' value space: '" || $concept-name || "'",
                                         $rules)
                )(:,
            
            let $map-concepts := 
                $report.Networks[][$$.ShortName eq "ConceptMap"].Trees[].Name
            for $concept-names in $map-concepts
            group by $concept-name := $concept-names
            return
                (
                    if ($concept-name = $hypercube-concepts)
                    then ()
                    else reports:message($reports:ERROR,
                                         $reports:CONTEXT-NETWORKS-CONCEPTMAP,
                                         $concept-name, 
                                         "Concept is not in the hypercubes' value space: '" || $concept-name || "'")
                ):)
        )
};

declare function reports:validate($report as object)
as object*
{
  reports:labels-checks($report),
  reports:concepts-checks($report)
};

declare function reports:has-report-access-permission($report as object, $authenticated-user-email as string?, $right as string) as boolean
{
    let $rights as string* := 
        (: higher access rights includ lower ones :)
        switch ($right)
        case "FULL_CONTROL" return ("FULL_CONTROL")
        case "WRITE" return ("FULL_CONTROL" ,"WRITE")
        case "READ" return ("FULL_CONTROL", "WRITE", "READ")
        default return error(xs:QName("reports:UNKNOWN-ACCESS-RIGHT"), "'" || $right || "': Access to report cannot be checked for unknown right.")
    return
        if($report.Owner eq $authenticated-user-email) 
        then true (: owner has allways full control :)
        else 
            boolean(
                distinct-values(
                    for $right in $report.ACL[]
                    let $grantees as string+ := ( "http://28.io/groups/AllUsers", $authenticated-user-email )
                    return
                        if($right.Grantee = $grantees and $right.Permission = $rights)
                        then true
                        else ()
                ))
};

declare function reports:is-public-read($report as object) as boolean
{
    reports:has-report-access-permission($report, (), "READ")
};

declare function reports:make-public-read($report as object) as object
{
    if(reports:is-public-read($report))
    then $report
    else
        {|
            trim($report, "ACL"),
            { "ACL": [
                {
                      "Type": "Group",
                      "Grantee": "http://28.io/groups/AllUsers",
                      "Permission": "READ"
                },
                flatten($report.ACL)
            ]}
        |}
};

declare function reports:make-private-read($report as object) as object
{
    if(reports:is-public-read($report))
    then 
        {|
            trim($report, "ACL"),
            { "ACL": [
                for $ac in flatten($report.ACL)
                (: remove rights allUsers :)
                where not($ac.Type eq "Group" and $ac.Grantee eq "http://28.io/groups/AllUsers")
                return
                    $ac
            ]}
        |}
    else $report
};

declare function reports:validate-and-update-report-properties($report as object, $existing-report as object?, $authenticated-user-email as string) as object
{
    copy $r := $report
    modify (
        (: @TODO conflict checking
        if($existing-report.LastModified ne $report.LastModified)
        then error(xs:QName("reports:CONFLICT"), "The stored report (last modified: " || $existing-report.LastModified 
                  || ") contains changes that are newer than the report (last modified: " || $report.LastModified || ") to store.")
        else (),
        :)
        
        (: fix Owner if needed :)
        if(empty($r.Owner))
        then insert json { "Owner": $authenticated-user-email } into $r
        else (),
        if($r.Owner eq "" or
          (empty($existing-report) and $r.Owner ne $authenticated-user-email))
        then replace value of json $r.Owner with $authenticated-user-email
        else (),
        
        if(exists($report.LastModified))
        then replace value of json $r.LastModified with string(current-dateTime())
        else insert json { "LastModified": string(current-dateTime()) } into $r
    )
    return (
        (: user authorized to update ACL? :)
        if(exists($existing-report) and not(deep-equal($r.ACL, $existing-report.ACL)) and not(reports:has-report-access-permission($report, $authenticated-user-email, "FULL_CONTROL")))
        then error(xs:QName("reports:UNAUTHORIZED"), "changing ACL requires FULL_CONTROL access right or being the owner.")
        else (),
        
        (: user authorized to change owner? :)
        if($r.Owner ne $existing-report.Owner)
        then error(xs:QName("reports:UNAUTHORIZED"), "changing the owner from " || $existing-report.Owner || " to " || $r.Owner || " is not allowed.")
        else (),
        
        $r
    )
};


