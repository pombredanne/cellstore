jsoniq version "1.0";

(:
 : Copyright 2012-2013 28msec Inc.
 :)

(:~
 : <p>This module provides functionality for querying companies (XBRL entities)
 :  submitting to the SEC.</p>
 : <p>SEC Companies are nothing else than XBRL entities. For XBRL-generic requests on
 : entities, use the generic entities module.</p>
 :
 : <p>With this module, you can retrieve a company with its CIK (without converting
 : it to an EID). You can also retrieve companies by sector, by SIC code, by types,
 : by tags, by tickers.</p>
 :
 : @author Charles Hoffman
 : @author Matthias Brantner
 : @author Dennis Knochenwefel
 : @author Ghislain Fourny
 :)
module namespace companies = "http://28.io/modules/xbrl/profiles/sec/companies";

import module namespace mongo = "http://www.28msec.com/modules/mongodb";
import module namespace credentials = "http://www.28msec.com/modules/credentials";
import module namespace csv = "http://zorba.io/modules/json-csv";

import module namespace entities = "http://28.io/modules/xbrl/entities";
import module namespace sec = "http://28.io/modules/xbrl/profiles/sec/core";

declare namespace ver = "http://zorba.io/options/versioning";
declare option ver:module-version "1.0";

(:~
 : <p>Return all companies</p>
 : 
 : @return all companies.
 :) 
declare function companies:companies() as object*
{
  entities:entities()
};

(:~
 : <p>Return the companies with the given identifiers.</p>
 : 
 : @param $companies-or-ids the ids of the companies or the companies themselves.
 :
 : @return the companies with the given identifiers
 :         the empty sequence if no company was found or if the input is an
 :         empty sequence.
 :) 
declare function companies:companies($companies-or-ids as item*) as object*
{
  let $ids as atomic* :=
    for $s in $companies-or-ids
    where $s instance of atomic
    return $s
  let $companies as object* :=
    for $s in $companies-or-ids
    where $s instance of object
    return $s
  return
    (
      $companies,
      if (exists($ids))
      then
        let $conn := companies:connection()
        return mongo:find($conn, $entities:col, { "_id" : { "$in" : [ $ids ! companies:eid($$) ] } })
      else ()
    )
};

(:~
 : <p>Return a distinct set of companies identified by either
 :   CIKs, tags, tickers, or sics.</p>
 : 
 : @param $ciks a set of CIKs.
 : @param $tags a set of tags (ALL retrieves all companies).
 : @param $tickers a set of tickers.
 : @param $sics a set of SIC codes.
 :
 : @return the companies with the given identifiers, tags, tickers, or sic codes.
 :)
declare function companies:companies(
    $ciks as string*,
    $tags as string*,
    $tickers as string*,
    $sics as string*) as object*
{
    if ($tags = "ALL")
    then companies:companies()
    else
        for $c in (
            companies:companies($ciks),
            companies:companies-for-tags($tags),
            companies:companies-for-tickers($tickers),
            companies:companies-for-SIC($sics)
        )
        group by $c._id
        return $c[1]
};

(:~
 : <p>Return a distinct set of companies identified by either
 :   CIKs, tags, tickers, or sics.</p>
 : 
 : @param $options an object of the form
 :   {
 :     ciks : [ ],
 :     tags : [ ],
 :     tickers : [ ],
 :     sics : [ ]
 :   }
 :
 : @return the companies with the given identifiers, tags, tickers, or sic codes.
 :)
declare function companies:companies-for(
  $options as object) as object*
{
  for $c in (
    companies:companies(flatten($options.ciks)),
    companies:companies-for-tags(flatten($options.tags)),
    companies:companies-for-tickers(flatten($options.tickers)),
    companies:companies-for-SIC(flatten($options.sic))
  )
  group by $c._id
  return $c[1]
};

(:~
 : <p>Retrieves the type of a company.</p>
 : 
 : @param $companies-or-ciks a sequence of companies or their identifiers (CIKs).
 :
 : @return all company types.
 :) 
declare function companies:types($companies-or-ciks as item*) as string*
{
  let $companies := companies:companies($companies-or-ciks)
  return $companies.Profiles.SEC.CompanyType
};

(:~
 : <p>Retrieves all companies in the given sectors.</p>
 : 
 : @deprecated please use companies:companies-for-sectors#1
 : @param $sectors a sequence of sectors as strings.
 :
 : @return all companies in these sectors.
 :) 
declare function companies:companies-for-sector($sectors as string*) as object*
{
  companies:companies-for-sectors($sectors)
};

(:~
 : <p>Retrieves all companies in the given sectors.</p>
 : 
 : @param $sectors a sequence of sectors as strings.
 :
 : @return all companies in these sectors.
 :) 
declare function companies:companies-for-sectors($sectors as string*) as object*
{
  let $conn := companies:connection()
  for $s in $sectors
  return mongo:find($conn, $entities:col, { "Profiles.SEC.Sector" : $s })
};

(:~
 : <p>Retrieves all companies whose type of business
 : matches the SIC (Standard Industrial Classification) code.</p>
 : 
 : @param $sic-codes a sequence of SIC codes.
 :
 : @return all companies with one of these SIC codes.
 :) 
declare function companies:companies-for-sic($sic-codes as string*) as object*
{
  let $conn := companies:connection()
  return mongo:find($conn, $entities:col, { "Profiles.SEC.SIC" : [ $sic-codes ] })
};

(:~
 : <p>Retrieves all companies whose type of business
 : matches the SIC (Standard Industrial Classification) code.</p>
 : 
 : @deprecated please use companies:companies-for-sic
 : @param $sic-codes a sequence of SIC codes.
 :
 : @return all companies with one of these SIC codes.
 :) 
declare function companies:companies-for-SIC($sic-codes as string*) as object*
{
  let $conn := companies:connection()
  for $s in $sic-codes
  return mongo:find($conn, $entities:col, { "Profiles.SEC.SIC" : $s })
};

(:~
 : <p>Retrieves all companies whose company type matches the passed string(s).</p>
 : 
 : @deprecated please use companies:companies-for-types
 : @param $company-type a sequence of strings of "Corporation", "Partnership", or "unknown".
 :
 : @return all companies with matching company type.
 :) 
declare function companies:companies-by-types($company-types as string*) as object*
{
  companies:companies-for-types($company-types)
};

(:~
 : <p>Retrieves all companies whose company type matches the passed string(s).</p>
 : 
 : @param $company-type a sequence of strings of "Corporation", "Partnership", or "unknown".
 :
 : @return all companies with matching company type.
 :) 
declare function companies:companies-for-types($company-types as string*) as object*
{
  for $t in $company-types
  return 
    if ($t = ("Corporation", "Partnership", "unknown"))
    then (); 
    else error(QName("companies:UNKNOWN-COMPANY-TYPE"), $t || ": Unknown company type. Allowed values: \"Corporation\", \"Partnership\", or \"unknown\".");
    
  let $conn := companies:connection()
  for $t in $company-types
  return mongo:find($conn, $entities:col, { "Profiles.SEC.CompanyType" : $t })
};

(:~
 : <p>Return all companies with any of the given tags.</p>
 :
 : @param $tags the tags to filter.
 : @return all companies with the given tags.
 :) 
declare function companies:companies-for-tags($tags as string*) as object*
{
  let $conn := companies:connection()
  for $tag in $tags
  return mongo:find($conn, $entities:col, { "Profiles.SEC.Tags" : $tag })
};

(:~
 : <p>Return all companies with any of the given ticker symbols.</p>
 :
 : <p>Tickers are case insensitive</p>
 :
 : @param $tickers the tickers to filter.
 : @return all companies with the given tickers.
 :)
declare function companies:companies-for-tickers(
  $tickers as  string*) as object*
{
  let $conn := companies:connection()
  for $ticker in $tickers
  return mongo:find($conn, $entities:col, { "Profiles.SEC.Tickers" : lower-case($ticker) })
};

(:~
 : <p>Return company type for a given company name. Company type can be one of:</p>
 : <p>
 :   <ul>
 :     <li>Corporation</li>
 :     <li>Partnership</li>
 :     <li>unknown</li>
 :   </ul>
 : </p>
 : 
 : @deprecated please use companies:types-for-names
 : @param $company-name the name of a company
 :
 : @return the company type string or "unknown" if the type can not be inferred
 :) 
declare function companies:company-type($company-name as string) as string
{
  companies:types-for-names($company-name)
};


(:~
 : <p>Returns a CSV representation of the given companies.</p>
 :
 : <p>Commas are used as column separators. Abscent values are serialized
 : as empty strings.</p>
 :
 : @param $companies-or-ids the ids of the companies or the companies themselves.
 :
 : @return a sequence of strings, each one representing one entity as CSV
 :)
declare function companies:to-csv($companies-or-ids as item*) as string*
{
  csv:serialize(
    for $e in companies:companies($companies-or-ids)
    return {
      ID : $e._id,
      Profile : $e.Profiles.SEC.Name,
      EntityName : $e.Profiles.SEC.CompanyName,
      CompanyType : $e.Profiles.SEC.CompanyType,
      SIC : $e.Profiles.SEC.SIC,
      SICDescription : $e.Profiles.SEC.SICDescription,
      SICGroup :$e.Profiles.SEC.SICGroup,
      Sector : $e.Profiles.SEC.Sector,
      IsTrust : $e.Profiles.SEC.IsTrust,
      Tickers : string-join($e.Profiles.SEC.Tickers[], " "),
      Tags : string-join($e.Profiles.SEC.Tags[], " ")
    },
    { serialize-null-as : "" }
  )
};

(:~
 : <p>Returns an XML representation of the given companies.</p>
 :
 : @param $companies-or-ids the ids of the companies or the companies themselves.
 :
 : @return a sequence of elements, each one representing one entity as XML
 :)
declare function companies:to-xml($companies-or-ids as item*) as element()*
{
  for $e in companies:companies($companies-or-ids)
  return
    <Entity>
      <ID>{$e._id}</ID>
      <Profile name="{$e.Profiles.SEC.Name}">
          <EntityRegistrantName>{$e.Profiles.SEC.CompanyName}</EntityRegistrantName>
          <CompanyType>{$e.Profiles.SEC.CompanyType}</CompanyType>
          <SIC>{$e.Profiles.SEC.SIC}</SIC>
          <SICDescription>{$e.Profiles.SEC.SICDescription}</SICDescription>
          <SICGroup>{$e.Profiles.SEC.SICGroup}</SICGroup>
          <Sector>{$e.Profiles.SEC.Sector}</Sector>
          <IsTrust>{$e.Profiles.SEC.IsTrust}</IsTrust>    
          <Tickers>{
              for $t in $e.Profiles.SEC.Tickers[]
              return <Ticker>{$t}</Ticker>
          }</Tickers>
          <Tags>
          {
              for $t in $e.Profiles.SEC.Tags[]
              return <Tag>{$t}</Tag>
          }
          </Tags>
      </Profile>
    </Entity>
};

(:~
 : <p>Return company types for a given sequence of company names. Company type can be one of:</p>
 : <p>
 :   <ul>
 :     <li>Corporation</li>
 :     <li>Partnership</li>
 :     <li>unknown</li>
 :   </ul>
 : </p>
 : 
 : @param $company-names the sequence of the names of the companies
 :
 : @return the company type string or "unknown" if the type can not be inferred
 :) 
declare function companies:types-for-names($company-names as string*) as string*
{
  for $company-name in $company-names
  let $lower-name as string := lower-case($company-name)
  return
    switch (true)
    case contains($lower-name, " corp")
    case contains($lower-name, " inc")
    case contains($lower-name, " co")
    case contains($lower-name, " bancorp")
    case contains($lower-name, " bancshares")
    case contains($lower-name, " group")
    case contains($lower-name, " llc")
    case contains($lower-name, " l.l.c.")
      return "Corporation"
    case contains($lower-name, " plc")
    case contains($lower-name, " lp")
    case contains($lower-name, " l.p.")
    case contains($lower-name, " lllp")
    case contains($lower-name, " ltd")
    case contains($lower-name, " partnership")
      return "Partnership"
    default return "unknown" 
};

(:~
 :
 : <p>Converts the input to a normalized CIK. The input
 : can be either a pure CIK without scheme, or an already
 : normalized CIK, or an entity object which contains a CIK
 : in its id field.</p>
 :
 : @param $cik_or_entity a CIK or an entity.
 :
 : @error sec:INVALID_PARAMETER if the CIK or entity is not valid
 :
 : @return the normalized CIK.
 :)
declare function companies:eid($companies-or-eids-or-ciks as item*) as string*
{
  let $preprocessed := for $c in $companies-or-eids-or-ciks
                       return switch(true)
                              case not $c instance of atomic return $c
                              case $c castable as string return string($c)
                              default return $c                              
  let $eids := entities:eid($preprocessed)
  for $eid in $eids
  return typeswitch ($eid)
         case $cik as string return
           switch(true)
           case starts-with($cik, $sec:CIK) return $cik
           case contains($cik, " ") return
               (: cik seems to contain a scheme, but not a CIK scheme, i.e. it's invalid :)
               error(QName("sec:INVALID_PARAMETER"), $cik || ": not a valid CIK")
           case not $cik castable as integer return
               (: cik seems to not be an integer :)
               error(QName("sec:INVALID_PARAMETER"), $cik || ": not a valid integer")
           default return let $cik := normalize-space($cik)
                          return
                          $sec:CIK || " " ||
                          format-integer($cik cast as integer, "0000000000") cast as string
         default return error(
             QName("sec:INVALID_PARAMETER"),
             "Invalid entity or CIK (must be an object or a string): "
             || serialize($companies-or-eids-or-ciks))
};

(:~
 :)
declare %private %an:strictlydeterministic function companies:connection() as anyURI
{
  let $credentials :=
      let $credentials := credentials:credentials("MongoDB", "xbrl")
      return if (empty($credentials))
             then error(QName("companies:CONNECTION-FAILED"), "no xbrl MongoDB configured")
             else $credentials
  return
    try {
      mongo:connect($credentials)
    } catch mongo:* {
      error(QName("companies:CONNECTION-FAILED"), $err:description)
    }
};
