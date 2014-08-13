jsoniq version "1.0";
(:
 : Copyright 2013 28msec Inc.
 :)


(:~
 : <p>This module provides functions for storing, retrieving, and modifying
 : rules. Rules can be used in BizQL queries to:</p>
 :
 : <ul>
 :   <li>Impute Facts that were not reported within an instance, yet can be 
 :       derived from reported facts.</li>
 :   <li>Compute arbitrary new Facts (Ratios, Calculated Facts, Facts from different 
 :       Datasources/Instances, etc.).</li>
 :   <li>Run validation and/or verification rules</li>
 : </ul>
 :
 : <p>A Rule is an object containing a BizQL fomula to execute if a condition is met.
 : For example if a user queries for a certain concept and a rule exists for this 
 : concept then the rule is applied to get the fact.</p>
 : 
 : <p>With this module, you can retrieve the rules associated with each report
 : schema. You can also query for facts by making implicitly use of the mapping.</p>
 :
 : @author Charles Hoffman
 : @author Matthias Brantner
 : @author Dennis Knochenwefel
 : @author Ghislain Fourny
 :
 :)
module namespace rules = "http://28.io/modules/xbrl/rules";

import module namespace report-schemas = "http://28.io/modules/xbrl/report-schemas";
import module namespace r = "http://zorba.io/modules/random";

declare namespace ver = "http://zorba.io/options/versioning";
declare option ver:module-version "1.0";

(:~
 : <p>Retrieves all rules from all report schemas.</p>
 : 
 : @return all rules.
 :) 
declare function rules:rules() as object*
{
  report-schemas:report-schemas().Rules[]
};

(:~
 : <p>Return the rules from the given report schemas.</p>
 :
 : @param $rid the schemas containing the rules, or their RIDs.
 : 
 : @return the rules from the report schemas.
 :) 
declare function rules:rules($report-schemas-or-ids as item*)
as object*
{
  report-schemas:report-schemas($report-schemas-or-ids).Rules[]
};

(:~
 : <p>Serializes a fact to a simple string format that can be used in
 :    audit trail messages to trail the value of the fact.</p>
 :
 : <p>The returned string follows the pattern: fact-concept-name[fact-value]</p>
 :
 : @param $fact a single fact to serialize to a simple informative string
 : 
 : @return the string with key information about the fact.
 :) 
declare function rules:fact-trail(
  $fact as object?)
as string
{
  let $name as string := 
    if(exists($fact))
    then
      if(exists($fact.Aspects."xbrl:Concept"))
      then $fact.Aspects."xbrl:Concept"
      else serialize($fact.Aspects)
    else "empty-sequence"
  return rules:fact-trail($fact, $name)
};

(:~
 : <p>Serializes a fact to a simple string format that can be used in
 :    audit trail messages to trail the value of the fact.</p>
 :
 : <p>The returned string follows the pattern: fact-concept-name[fact-value]</p>
 :
 : @param $fact an empty-sequence or a single fact to serialize to a 
 :              simple informative string
 : @param $name an alternative name to use if the $fact is an empty-sequence
 :              otherwise the name will be taken from the fact
 : 
 : @return the string with key information about the fact.
 :) 
declare function rules:fact-trail(
  $fact as object?,
  $name as string)
as string
{
  let $name as string := 
    if(exists($fact.Aspects."xbrl:Concept"))
    then $fact.Aspects."xbrl:Concept"
    else $name
  let $fact-type as string := 
    if(exists($fact.Type))
    then $fact.Type
    else "NumericValue"
  let $unit as atomic? := $fact.Aspects."xbrl:Unit"
  let $formated-value as string :=
    switch (true)
    case ($fact-type ne "NumericValue")
    return string($fact.Value)
    case $unit ne null and starts-with($unit, "iso4217:")
    return 
      format-number(rules:decimal-value($fact),"###,###.##")
      || " " || substring-after($unit, "iso4217:")
    case exists($unit)
    return string(rules:decimal-value($fact)) || " " || $unit
    default
    return string(rules:decimal-value($fact))
  return 
    $name || "[" || $formated-value || "]"
};

(:~
 : <p>Helper function to create a new fact within a rule using a template
 :    fact.</p>
 :
 : @param $template-fact a fact object that will be used as a template for the
 :        newly created fact 
 : @param $concept-name-or-aspects either a name of the concept for the newly 
 :        created fact or a complete aspects object to be used in the new fact.
 : @param $value a value for the newly created fact
 : @param $rule the rule in which this fact has been created
 : @param $audit-trail-message a verbose string message explaining how and why
 :        this fact has been created
 : @param $source-facts sequence of facts that have been used to compute the new
 :        fact (this will only be added to the AuditTrails if the audit-trail 
 :        option is set to "debug")
 : @param $options <a href="facts#standard_options">standard fact retrieving options</a>.
 : 
 : @return the newly created fact
 :) 
declare %an:nondeterministic function rules:create-computed-fact(
  $template-fact as object,
  $concept-name-or-aspects as item,
  $value as item,
  $rule as object,
  $audit-trail-messages as string*,
  $source-facts as object*,
  $options as object?)
as object
{
  rules:create-computed-fact(
    $template-fact,
    $concept-name-or-aspects,
    $value,
    $rule,
    $audit-trail-messages,
    $source-facts,
    $options,
    (),
    ())
};

(:~
 : <p>Helper function to create a new fact within a rule using a template
 :    fact.</p>
 :
 : @param $template-fact a fact object that will be used as a template for the
 :        newly created fact 
 : @param $concept-name-or-aspects either a name of the concept for the newly 
 :        created fact or a complete aspects object to be used in the new fact.
 : @param $value a value for the newly created fact
 : @param $rule the rule in which this fact has been created
 : @param $audit-trail-message a verbose string message explaining how and why
 :        this fact has been created
 : @param $source-facts sequence of facts that have been used to compute the new
 :        fact (this will only be added to the AuditTrails if the audit-trail 
 :        option is set to "debug")
 : @param $options <a href="facts#standard_options">standard fact retrieving options</a>.
 : @param $validated-facts in case of a validation rule: the sequence of 
 :        validated facts
 : @param $validation-results the corresponding result (true|false) for each 
 :        check (if there are 3 messages then there should be 3 results in 
 :        the same order or none).
 : 
 : @return the newly created fact
 :) 
declare %an:nondeterministic function rules:create-computed-fact(
  $template-fact as object,
  $concept-name-or-aspects as item,
  $value as item,
  $rule as object,
  $audit-trail-messages as string*,
  $source-facts as object*,
  $options as object?,
  $validated-facts as object*,
  $validation-results as boolean*
) as object
{
  let $audit-trail-option as string := 
    (
      lower-case($options.audit-trail),
      "debug"
    )[1]
  let $computed-concept := 
    if($concept-name-or-aspects instance of string)
    then $concept-name-or-aspects
    else $concept-name-or-aspects."xbrl:Concept"
  let $validated-concepts := jn:flatten($rule.ValidatedConcepts)
  let $audit-trails := (
    for $message at $pos in $audit-trail-messages
    let $passed := $validation-results[$pos]
    return {
      Id: $rule.Id,
      Type: $rule.Type,
      Label: $rule.Label,
      Message: $message,
      Data: {|
        { OutputConcept: $computed-concept },
        if($audit-trail-option eq "debug") 
        then { SourceFacts: [ $source-facts ] }
        else (),
        if($rule.Type eq "xbrl28:validation"
           and exists($validated-concepts))
        then 
          { 
            ValidatedConcepts : [$validated-concepts],
            ValidatedFacts: [ $validated-facts ! $$._id ],
            ValidationPassed: $passed
          }
        else (),
        let $sub-audit-trails := $source-facts ! $$.AuditTrails[]
        return
          if (exists($sub-audit-trails))
          then { AuditTrails: [ $sub-audit-trails ] }
          else ()
      |}
    }
  )
  return
    rules:create-computed-fact(
      $template-fact,
      $concept-name-or-aspects,
      $value,
      $rule,
      $audit-trails,
      $options)
};

(:~
 : <p>Helper function to create a new fact within a rule using a template
 :    fact.</p>
 :
 : @param $template-fact a fact object that will be used as a template for the
 :        newly created fact 
 : @param $concept-name-or-aspects either a name of the concept for the newly 
 :        created fact or a complete aspects object to be used in the new fact.
 : @param $value a value for the newly created fact
 : @param $rule the rule in which this fact has been created
 : @param $audit-trails a sequence of audit trail objects
 : @param $options <a href="facts#standard_options">standard fact retrieving options</a>.
 : 
 : @return the newly created fact
 :) 
declare %an:nondeterministic function rules:create-computed-fact(
  $template-fact as object,
  $concept-name-or-aspects as item,
  $value as item,
  $rule as object,
  $audit-trails as object*,
  $options as object?
) as object
{
  copy $newfact := ($template-fact, $options)[1] (: just avoid warning :)
  modify (
    (: generate id :)
    let $id := r:uuid()
    return
      if (exists($newfact."_id"))
      then replace value of json $newfact."_id" with $id
      else insert json { "_id" : $id } into $newfact,

    (: set aspects or concept name :)
    switch (true)
    case ($concept-name-or-aspects instance of object)
    return replace value of json $newfact.Aspects
             with $concept-name-or-aspects
    case ($concept-name-or-aspects instance of string)
    return replace value of json $newfact.Aspects."xbrl:Concept"
             with $concept-name-or-aspects
    default 
    return error(xs:QName("rules:INVALID-CONCEPT-NAME-OR-ASPECTS"),
                 "'" || $rule.Label || "': Invalid concept name or aspects "
                 || serialize($concept-name-or-aspects)),

    (: set Value :)
    replace value of json $newfact.Value with $value,

    (: set Type :)
    if ($rule.Type eq "xbrl28:validation")
    then 
      if(exists($newfact.Type))
      then replace value of json $newfact.Type with "BooleanValue"
      else insert json { Type : "BooleanValue" } into $newfact
    else (),

    (: set xbrl28:Type :)
    let $xbrl28-Type :=
      switch (true)
      case ($rule.Type eq "xbrl28:validation")
      return "xbrl28:validation"
      case ($rule.Type eq "xbrl28:formula")
      return "xbrl28:formula"
      default return ()
    return 
      if (exists($xbrl28-Type))
      then
        if(exists($newfact."xbrl28:Type"))
        then replace value of json $newfact."xbrl28:Type" with $xbrl28-Type
        else insert json { "xbrl28:Type" : $xbrl28-Type } into $newfact
      else (),

    (: set audit trail :)
    if(exists($newfact.AuditTrails))
    then replace value of json $newfact.AuditTrails with [ $audit-trails ]
    else insert json { AuditTrails: [ $audit-trails ] } into $newfact
  )
  return $newfact
};

(:~
 : <p>Returns the value of a given fact in case that it
 :    is castable to decimal. If no fact is given or a fact value
 :    is not castable to decimal 0 is returned instead.</p>
 :
 : <p>This function is a helper to be used for arithmetic operations
 :    on facts within rules. As arithmetic operations can not be applied 
 :    to sequences of values this function does only accept
 :    single facts.</p>
 :
 : @param $fact an empty-sequence or a fact from which to
 :              get the decimal value. If more than one fact is passed
 :              as a parameter an error will be raised.
 : 
 : @error err:XPTY0004 if more than one fact is passed as a parameter
 :
 : @return the decimal value of the fact or 0.
 :) 
declare function rules:decimal-value($fact as object*)
as decimal
{
  switch (true)

  case (empty($fact))
  return decimal(0)

  case (count($fact) gt 1)
  return 
    error(xs:QName("err:XPTY0004"),
          "sequence of more than one item can not be passed as parameter "
          || "to function rules:decimal-value(). The passed fact concepts"
          || " are: " || string-join($fact.Aspects."xbrl:Concept", ", ")
          || ". Fact details: " || serialize([$fact]) || ".")

  default
  return
   (
     let $value := $fact.Value
     return 
       if($value castable as decimal)
       then decimal($value)
       else (),
     decimal(0)
   )[1]
};

