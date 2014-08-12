jsoniq version "1.0";

(:
 : Copyright 2012-2013 28msec Inc.
 :)

(:~
 : <p>This module provides functionality for querying financial reports (filings)
 : submitted to the SEC.</p>
 : <p>SEC Filings are nothing else than XBRL archives. For XBRL-generic requests on archives,
 : use the generic archives module.</p>
 :
 : <p>With this module, you can access a number of properties of an SEC filing, such as
 : its document type. You can also retrieve an SEC filing given an SEC company (or its CIK).</p>
 : <p>You can also access SEC filings statistics (the number of SEC Networks, of SEC Axes, etc).</p>
 : @author Charles Hoffman
 : @author Matthias Brantner
 : @author Dennis Knochenwefel
 : @author Ghislain Fourny
 :)
module namespace filings = "http://28.io/modules/xbrl/profiles/sec/filings";

import module namespace datetime = "http://zorba.io/modules/datetime";

import module namespace csv = "http://zorba.io/modules/json-csv";

import module namespace archives = "http://28.io/modules/xbrl/archives";
import module namespace companies = "http://28.io/modules/xbrl/profiles/sec/companies";
import module namespace fiscal = "http://28.io/modules/xbrl/profiles/sec/fiscal/core";

declare namespace ver = "http://zorba.io/options/versioning";
declare option ver:module-version "1.0";

(:~
 : <p>Retrieves all filings.</p>
 : 
 : @return all filings.
 :) 
declare function filings:filings() as object*
{
  archives:archives()
};

(:~
 : <p>Retrieves the filings with the given IDs.</p>
 :
 : @param $id the ids of the filings (accession numbers) or the filings themselves.
 : 
 : @return the fiinngs with the given IDs
 :) 
declare function filings:filings($filings as item*) as object*
{
  archives:archives($filings)
};

(:~
 : <p>Return all filings submitted by the supplied companies.</p>
 : 
 : @param $companies-or-ciks arbitrary number of company objects or CIKs.
 :
 : @return all filings submitted by these companies.
 :) 
declare function filings:filings-for-companies($companies-or-ciks as item*) as object*
{
  let $companies := companies:companies($companies-or-ciks)
  return archives:archives-for-entities($companies)
};

(:~
 : <p>Retrieves the document type of the filings.</p>
 : 
 : @param $filings-or-ids a sequence of filings or their ids.
 :
 : @return the document types (10-K, 10-Q).
 :) 
declare function filings:document-types(
    $filings-or-ids as item*) as string?
{
  archives:archives($filings-or-ids).Profiles.SEC.FormType
};

(:~
 :
 : <p>Retrieves the acceptance date of filings.</p>
 :
 : @param $filings-or-ids a sequence of filings or their IDs.
 : @return the acceptance dateTimes.
 :)
declare function filings:acceptance-dateTimes($filings-or-ids as item*) as dateTime*
{
  archives:archives($filings-or-ids) !
    datetime:parse-dateTime($$.Profiles.SEC.AcceptanceDatetime, "%Y%m%d%H%M%S")
};

(:~
 :
 : <p>Retrieves the submission date of filings.</p>
 :
 : @param $filings-or-ids a sequence of filings or their IDs.
 : @return the submission dates.
 :)
declare function filings:filing-dates($filings-or-ids as item*) as date*
{
  archives:archives($filings-or-ids) !
  date(string-join(tokenize($$.Profiles.SEC.FilingDate, ("/")), "-"))
};

(:~
 :
 : <p>Retrieves the generators of filings.</p>
 :
 : @param $filings-or-ids a sequence of filings or their IDs.
 : @return the generators used.
 :)
declare function filings:generators($filings-or-ids as item*) as string*
{
  archives:archives($filings-or-ids).Profiles.SEC.Generator
};

(:~
 : Return the number of tables in each of the given filings.
 :
 : @param $filings-or-ids list of filings or IDs
 :
 : @return the said number of tables
 :)
declare function filings:num-tables($filings-or-ids as item*) as integer*
{
  archives:num-hypercubes($filings-or-ids)
};

(:~
 : Return the number of networks in each of the given filings.
 :
 : @param $filings-or-ids list of filings or IDs
 :
 : @return the said number of networks
 :)
declare function filings:num-networks($filings-or-ids as item*) as integer*
{
  archives:num-components($filings-or-ids)
};

(:~
 : Return the number of (distinct) report elements in each of the given filings.
 :
 : @param $filings-or-ids list of filings or IDs
 :
 : @return the said number of report elements
 :)
declare function filings:num-report-elements($filings-or-ids as item*) as integer*
{
  for $a in archives:archives($filings-or-ids)
  return sum(
    (
      archives:num-concrete-primary-items-in-hypercubes($a),
      archives:num-abstract-primary-items-in-hypercubes($a),
      archives:num-concrete-primary-items-not-in-hypercubes($a),
      archives:num-distinct-abstract-primary-items-not-in-hypercubes($a)
    )
  )
};

(:~
 : Return the number of (distinct) axes in each of the given filings.
 :
 : @param $filings-or-ids list of filings or IDs
 :
 : @return the said number of axes
 :)
declare function filings:num-axes($filings-or-ids as item*) as integer*
{
  archives:num-explicit-dimensions($filings-or-ids)
};

(:~
 : Return the number of (distinct) members in each of the given filings.
 :
 : @param $filings-or-ids list of filings or IDs
 :
 : @return the said number of members
 :)
declare function filings:num-members($filings-or-ids as item*) as integer*
{
  for $a in archives:archives($filings-or-ids)
  return $a.Statistics.NumDistinctMembers -  $a.Statistics.NumDistinctDomains
};

(:~
 : Return the number of (distinct) line items in each of the given filings.
 :
 : @param $filings-or-ids list of filings or IDs
 :
 : @return the said number of line items
 :)
declare function filings:num-line-items($filings-or-ids as item*) as integer*
{
  archives:archives($filings-or-ids) ! $$.Statistics.NumDistinctReportElementNamesEndingWithLineItems
};

(:~
 : Return the number of (distinct) abstracts in each of the given filings.
 :
 : @param $filings-or-ids list of filings or IDs
 :
 : @return the said number of abstracts
 :)
declare function filings:num-abstracts($filings-or-ids as item*) as integer*
{
  for $a in archives:archives($filings-or-ids)
  let $s := $a.Statistics
  return  $s.NumDistinctAbstractPrimaryItemsInHypercubes
          + $s.NumDistinctAbstractPrimaryItemsNotInHypercubes
          - $s.Profiles.SEC.NumDistinctReportElementNamesEndingWithLineItems
};

(:~
 : Return the number of (distinct) concepts in each of the given filings.
 :
 : @param $filings-or-ids list of filings or IDs
 :
 : @return the said number of concepts
 :)
declare function filings:num-concepts($filings-or-ids as item*) as integer*
{
  for $a in archives:archives($filings-or-ids)
  let $s := $a.Statistics
  return  $s.NumDistinctConcretePrimaryItemsInHypercubes
          + $s.NumDistinctConcretePrimaryItemsNotInHypercubes
};

(:~
 : Return the number of facts in each of the given filings.
 :
 : @param $filings-or-ids list of filings or IDs
 :
 : @return the said number of facts
 :)
declare function filings:num-facts($filings-or-ids as item*) as integer*
{
  archives:archives($filings-or-ids) ! $$.Statistics.NumFacts
};

(:~
 : Return the number of extension facts in each of the given filings.
 :
 : @param $filings-or-ids list of filings or IDs
 :
 : @return the said number of facts
 :)
declare function filings:num-extension-facts($filings-or-ids as item*) as integer*
{
  archives:archives($filings-or-ids) ! $$.Statistics.Profiles.SEC.NumExtensionFacts
};

(:~
 : Return the number of footnotes in each of the given filings.
 :
 : @param $filings-or-ids list of filings or IDs
 :
 : @return the said number of facts
 :)
declare function filings:num-footnotes($filings-or-ids as item*) as integer*
{
  archives:num-footnotes($filings-or-ids)
};

(:~
 : Return the number of extension concepts in each of the given filings.
 :
 : @param $filings-or-ids list of filings or IDs
 :
 : @return the said number of concepts
 :)
declare function filings:num-extension-concepts($filings-or-ids as item*) as integer*
{
  archives:archives($filings-or-ids) ! $$.Statistics.Profiles.SEC.NumExtensionConcepts
};

(:~
 : Return the number of extension abstracts in each of the given filings.
 :
 : @param $filings-or-ids list of filings or IDs
 :
 : @return the said number of abstracts
 :)
declare function filings:num-extension-abstracts($filings-or-ids as item*) as integer*
{
  archives:archives($filings-or-ids) ! $$.Statistics.Profiles.SEC.NumExtensionAbstracts
};

(:~
 : <p>Returns summaries of the given filings or IDs.</p>
 :
 : <p>The function eliminates duplicates and returns only one
 : summary object per filing.</p>
 :
 : @param $filings-or-ids list of filings or IDs
 :
 : @return a sequence of objects, each one representing one summary
 :)
declare function filings:summaries($filings-or-ids as item*) as object*
{
  for $a in archives:archives($filings-or-ids)
  group by $a._id
  let $a := $a[1]
  return
    {
        CIK : $a.Entity,
        EntityRegistrantName : companies:companies($a.Entity).Profiles.SEC.CompanyName,
        FormType : filings:document-types($a),
        FiscalYear : fiscal:fiscal-year($a),
        FiscalPeriod : fiscal:fiscal-period($a),
        Accepted : filings:acceptance-dateTimes($a),
        Generator : filings:generators($a),
        AccessionNumber: $a._id,
        SECFilingPage : $a.Profiles.SEC.SECFilingPage,
        XBRLInstanceURL : $a.InstanceURL,
        Networks : filings:num-networks($a),
        ReportElements : filings:num-report-elements($a),
        Tables : filings:num-tables($a),
        Axis : filings:num-axes($a),
        Members : filings:num-members($a),
        LineItems : $a.Statistics.Profiles.SEC.NumDistinctReportElementNamesEndingWithLineItems,
        Concepts : filings:num-concepts($a),
        Abstracts : filings:num-abstracts($a),
        Footnotes : filings:num-footnotes($a),
        Facts: filings:num-facts($a),
        ExtensionFacts:  filings:num-extension-facts($a),
        ExtensionConcepts : filings:num-extension-concepts($a),
        ExtensionAbstracts : filings:num-extension-abstracts($a) 
    }
};

(:~
 : <p>Returns an XML representation of the given filing summaries.</p>
 :
 : @param $summaries summaries of the filings to convert to XML.
 :
 : @return a sequence of elements, each one representing one filing summary as XML
 :)
declare function filings:summaries-to-xml($summaries as object*) as element()*
{
  for $s in $summaries
  return
    <Filing>
        <CIK>{$s.CIK}</CIK>
        <EntityRegistrantName>{$s.EntityRegistrantName}</EntityRegistrantName>
        <FormType>{$s.FormType}</FormType>
        <FiscalYear>{$s.FiscalYear}</FiscalYear>
        <FiscalPeriod>{$s.FiscalPeriod}</FiscalPeriod>
        <Accepted>{$s.Accepted}</Accepted>
        <Generator>{$s.Generator}</Generator>
        <AccessionNumber>{$s.AccessionNumber}</AccessionNumber>
        <SECFilingPage>{$s.SECFilingPage}</SECFilingPage>
        <XBRLInstanceURL>{$s.XBRLInstanceURL}</XBRLInstanceURL>
        <Networks>{$s.Networks}</Networks> 
        <ReportElements>{$s.ReportElements}</ReportElements> 
        <Tables>{$s.Tables}</Tables> 
        <Axis>{$s.Axis}</Axis> 
        <Members>{$s.Members}</Members> 
        <LineItems>{$s.LineItems}</LineItems> 
        <Concepts>{$s.Concepts}</Concepts> 
        <Abstracts>{$s.Abstracts}</Abstracts> 
        <Footnotes>{$s.Footnotes}</Footnotes> 
        <Facts>{$s.Facts}</Facts> 
        <ExtensionFacts>{$s.ExtensionFacts}</ExtensionFacts>  
        <ExtensionConcepts>{$s.ExtensionConcepts}</ExtensionConcepts> 
        <ExtensionAbstracts>{$s.ExtensionAbstracts}</ExtensionAbstracts> 
    </Filing>
};

(:~
 : <p>Returns a CSV representation of the given filing summaries.</p>
 :
 : <p>Commas are used as column separators. Abscent values are serialized
 : as empty strings.</p>
 :
 : @param $summaries summaries of the filings to convert to CSV.
 :
 : @return a sequence of strings, each one representing one filings summary as CSV
 :)
declare function filings:summaries-to-csv($summaries as object*) as string*
{
  csv:serialize($summaries, { serialize-null-as : "" })
};
