jsoniq version "1.0";

(:
 : Copyright 2012-2013 28msec Inc.
 :)

(:~
 : <p>This module provides functionality for querying XBRL Infosets of financial reports submitted to the SEC.
 : </p>
 :
 : @author Charles Hoffman
 : @author Matthias Brantner
 : @author Dennis Knochenwefel
 : @author Ghislain Fourny
 :)
module namespace imp = "http://28.io/modules/xbrl/profiles/sec/import";

import module namespace string = "http://zorba.io/modules/string";

declare namespace ver = "http://zorba.io/options/versioning";
declare option ver:module-version "1.0";

(:~
 : Declarative description of the disclosure matching heuristics.
 :)
declare variable $imp:disclosure-matching as object :=
  {
    "statement": [
        {
          "matches": [ "cash flow" ],
          "no-matches": [ "parenth" ],
          "disclosure": "CashFlowStatement"
        },
        {
          "matches": [ "income statement" ],
          "no-matches": [ "parenth" ],
          "disclosure": "IncomeStatement"
        },
        {
          "matches": [ "statement of operation" ],
          "no-matches": [ "parenth" ],
          "disclosure": "IncomeStatement"
        },
        {
          "matches": [ "statements of income" ],
          "no-matches": [ "parenth" ],
          "disclosure": "IncomeStatement"
        },
        {
          "matches": [ "statements of income" ],
          "no-matches": [ "parenth" ],
          "disclosure": "IncomeStatement"
        },
        {
          "matches": [ "statement of earnings" ],
          "no-matches": [ "parenth" ],
          "disclosure": "IncomeStatement"
        },
        {
          "matches": [ "earnings statement" ],
          "no-matches": [ "parenth" ],
          "disclosure": "IncomeStatement"
        },
        {
          "matches": [ "results of operations" ],
          "no-matches": [ "parenth" ],
          "disclosure": "IncomeStatement"
        },
        {
          "matches": [ "result of operations" ],
          "no-matches": [ "parenth" ],
          "disclosure": "IncomeStatement"
        },
        {
          "matches": [ "Statements of Consolidated operations" ],
          "no-matches": [ "parenth" ],
          "disclosure": "IncomeStatement"
        },
        {
          "matches": [ "Statement of Consolidated Operations" ],
          "no-matches": [ "parenth" ],
          "disclosure": "IncomeStatement"
        },
        {
          "matches": [ "Statements of Consolidated income" ],
          "no-matches": [ "parenth" ],
          "disclosure": "IncomeStatement"
        },
        {
          "matches": [ "Statement of Consolidated income" ],
          "no-matches": [ "parenth" ],
          "disclosure": "IncomeStatement"
        },
        {
          "matches": [ "Statements of Consolidated earnings" ],
          "no-matches": [ "parenth" ],
          "disclosure": "IncomeStatement"
        },
        {
          "matches": [ "Statement of Consolidated earnings" ],
          "no-matches": [ "parenth" ],
          "disclosure": "IncomeStatement"
        },
        {
          "matches": [ "Operations statement" ],
          "no-matches": [ "parenth" ],
          "disclosure": "IncomeStatement"
        },
        {
          "matches": [ "Balance sheet" ],
          "no-matches": [ "parenth" ],
          "disclosure": "BalanceSheet"
        },
        {
          "matches": [ "CONSOLIDATED BALANCE" ],
          "no-matches": [ "parenth" ],
          "disclosure": "BalanceSheet"
        },
        {
          "matches": [ "statement of financial condition" ],
          "no-matches": [ "parenth" ],
          "disclosure": "BalanceSheet"
        },
        {
          "matches": [ "statements of financial condition" ],
          "no-matches": [ "parenth" ],
          "disclosure": "BalanceSheet"
        },
        {
          "matches": [ "statements of assets and liabilities" ],
          "no-matches": [ "parenth" ],
          "disclosure": "BalanceSheet"
        },
        {
          "matches": [ "net assets" ],
          "no-matches": [ "parenth" ],
          "disclosure": "BalanceSheet"
        },
        {
          "matches": [ "statements of condition" ],
          "no-matches": [ "parenth" ],
          "disclosure": "BalanceSheet"
        },
        {
          "matches": [ "statement of condition" ],
          "no-matches": [ "parenth" ],
          "disclosure": "BalanceSheet"
        },
        {
          "matches": [ "STATEMENTS OF ASSETS, LIABILITIES AND TRUST CORPUS" ],
          "no-matches": [ "parenth" ],
          "disclosure": "BalanceSheet"
        },
        {
          "matches": [ "Consolidated Statement Of Assets, Liabilities And Shareholders" ],
          "no-matches": [ "parenth" ],
          "disclosure": "BalanceSheet"
        },
        {
          "matches": [ "financial position" ],
          "no-matches": [ "parenth" ],
          "disclosure": "BalanceSheet"
        },
        {
          "matches": [ "Statement of comprehensive income" ],
          "no-matches": [ "parenth" ],
          "disclosure": "StatementOfComprehensiveIncome"
        },
        {
          "matches": [ "comprehensive income" ],
          "no-matches": [ "parenth" ],
          "disclosure": "StatementOfComprehensiveIncome"
        }
      ]
  };

(:~
 : <p>
 : Compute the disclosure for a given label within a given category.
 : </p>
 : 
 : @param $category the category to use for the lookup (e.g. statement)
 : @param $label the label to compute the dislosure for
 :
 : @return the disclosure with the highest probability
 :) 
declare %private function imp:network-label-matches($category as xs:string, $label as xs:string) as xs:string?
{
  let $disclosures as xs:string* :=
    let $potential-matches := $imp:disclosure-matching(lower-case($category))()
    let $label as xs:string := lower-case($label)
    for $test in $potential-matches
    let $matches as xs:string* := $test.matches()
    let $no-matches as xs:string* := $test.no-matches()
    let $disclosure as xs:string := $test.disclosure
    return
      if (
        every $match in $matches satisfies fn:matches($label, lower-case($match))
        and 
        ( every $no-match in $no-matches 
          satisfies not(fn:matches($label, lower-case($no-match)))
        )
      ) then $disclosure
      else ()

  (: if we have multiple different hits we choose the one with the most
     hits as best effort. :)
  for $disclosure in $disclosures
  let $d := $disclosure
  group by $d
  order by count($disclosure) descending
  return
    ( $disclosure )[1]
};


(:~
 : <p>
 : Compute the disclore for a component's network label.
 : </p>
 : 
 : @param $component the component
 :
 : @return  returns the given component ammended with the disclosure
 :) 
declare function imp:disclosure-for-network-label($component as object) as object
{  
  let $network-label as xs:string := $component.network-label
  let $tokens := string:split($network-label, "-")
  let $number as xs:string := normalize-space($tokens[1])
  let $category as xs:string := normalize-space(lower-case($tokens[2]))
  let $label as xs:string := normalize-space(lower-case($tokens[3]))

  let $disclosure as xs:string? := imp:network-label-matches($category, $label)
  return
    {|
      { 
        "disclosure": 
          if($disclosure)
          then $disclosure
          else "undefined"
      },
      $component
    |}   
};

