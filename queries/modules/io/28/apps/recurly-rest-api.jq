jsoniq version "1.0";
module namespace recurly-api = "http://apps.28.io/recurly-rest-api";

import module namespace http = "http://zorba.io/modules/http-client";
import module namespace base64 = "http://zorba.io/modules/base64";
import module namespace random = "http://zorba.io/modules/random";
import module namespace hmac = "http://zorba.io/modules/hmac";
import module namespace functx = "http://www.functx.com";
import module namespace string = "http://zorba.io/modules/string";

declare namespace jerr = "http://jsoniq.org/errors";
declare variable $recurly-api:VALID-TOKEN := "[A-Za-z0-9_\\.\\-]+";
declare variable $recurly-api:VALID-PLAN := "[A-Za-z0-9_\\.\\-]+";
declare variable $recurly-api:VALID-UUID := "[A-Za-z0-9\\-]+";
declare variable $recurly-api:VALID-NUMBER := "[A-Za-z0-9]+";

(:
 : Retrieves an account billing information. 
 : If the account does not have a recurly account one is created.
 :)
declare %an:sequential function recurly-api:get-billing-info($account as object) 
as object()
{
  variable $account-code := recurly-api:ensure-billing-account($account);

  variable $request :=
  {
    "method" : "GET",
    "href": "https://api.recurly.com/v2/accounts/" || $account-code || "/billing_info",
    "headers":
    {
      "Accept" : "application/xml",
      "Authorization": recurly-api:api-token()
    }
  };
  
  variable $response := http:send-request($request);
  variable $update-info := 
  {
    "recurlyAccount" : recurly-api:billing-account($account),
    "recurlySignature" : recurly-api:signature($account),
    "recurlySubdomain" : recurly-api:subdomain()
  };

  if ($response("status") eq 200)
  then 
  {|
    { "billingData": recurly-api:object-result($response, ("first_six")) },
    $update-info
  |}
  else if ($response("status") eq 404)
  then $update-info
  else fn:error(xs:QName("recurly-api:error"), "Cannot retrieve billing information")
};

(:
 : Sets an account billing information, using a recurly token
 :)
declare %an:sequential function recurly-api:set-billing-info($account as object, $recurly-token as string)
as object()
{
  variable $account-code := recurly-api:ensure-billing-account($account);
  variable $request :=
  {
    "method": "PUT",
    "href": "https://api.recurly.com/v2/accounts/" || $account-code || "/billing_info",
    "headers":
    {
      "Accept": "application/xml",
      "Authorization": recurly-api:api-token()
    },
    "body":
    {
      "media-type": "application/xml;charset=UTF-8",
      "content": 
        serialize(
          <billing_info>
              <token_id>{$recurly-token}</token_id>
          </billing_info> 
        )
    }
  };
  
  variable $response := http:send-request($request);
  variable $update-info := 
  {
    "recurlyAccount" : recurly-api:billing-account($account),
    "recurlySignature" : recurly-api:signature($account),
    "recurlySubdomain" : recurly-api:subdomain()
  };

  if ($response("status") eq 200 or $response("status") eq 201)
  then 
  {|
    { "billingData": recurly-api:object-result($response, ("first_six")) },
    $update-info
  |}
  else fn:error(xs:QName("recurly-api:error"), "Cannot update billing information")
};

(:
 : Updates an account billing information.
 : This method is for automated testing.
 :)
declare %an:sequential function recurly-api:update-billing-info($account as object,
  $billing-info as object())
as object()
{
  variable $account-code := recurly-api:ensure-billing-account($account);
  variable $request :=
  {
    "method": "PUT",
    "href": "https://api.recurly.com/v2/accounts/" || $account-code || "/billing_info",
    "headers":
    {
      "Accept": "application/xml",
      "Authorization": recurly-api:api-token()
    },
    "body":
    {
      "media-type": "application/xml;charset=UTF-8",
      "content": 
        serialize(
          <billing_info>
          {
            recurly-api:xml-field($billing-info, "firstName", "first_name", true()),
            recurly-api:xml-field($billing-info, "lastName", "last_name", true()),
            recurly-api:xml-field($billing-info, "address1", "address1", true()),
            recurly-api:xml-field($billing-info, "address2", "address2", false()),
            recurly-api:xml-field($billing-info, "city", "city", true()),
            recurly-api:xml-field($billing-info, "state", "state", false()),
            recurly-api:xml-field($billing-info, "country", "country", true()),
            recurly-api:xml-field($billing-info, "zip", "zip", true()),
            recurly-api:xml-field($billing-info, "phone", "phone", false()),
            recurly-api:xml-field($billing-info, "vatNumber", "vat_number", false()),
            
            recurly-api:xml-field($billing-info, "number", "number", true()),
            recurly-api:xml-field($billing-info, "month", "month", true()),
            recurly-api:xml-field($billing-info, "year", "year", true()),
            recurly-api:xml-field($billing-info, "verificationValue", "verification_value", true())
          }
          </billing_info> 
        )
    }
  };
  
  variable $response := http:send-request($request);

  if ($response("status") = (200, 201))
  then recurly-api:object-result($response, ("first_six"))
  else fn:error(xs:QName("recurly-api:error"), "Cannot update billing information")
};

(:
 : Returns the recurly account for an account.
 : If the account does not have a recurly account, one is created.
 :)
declare %an:sequential function recurly-api:ensure-billing-account($account as object)
as xs:string
{
  variable $billing-account := recurly-api:billing-account($account);
  if ($billing-account)
  then exit returning $billing-account;
  else ();  

  variable $account-code := "SECXBRL_" || fn:data($account._id);
  variable $request :=
  {
    "method": "POST",
    "href": "https://api.recurly.com/v2/accounts",
    "headers":
    {
      "Accept": "application/xml",
      "Authorization": recurly-api:api-token()
    },
    "body":
    {
      "media-type": "application/xml; charset=UTF-8",
      "content": 
        serialize(
          <account>
            <account_code>{ $account-code }</account_code>
            <email>{ fn:data($account.email) }</email>
            <first_name>{ xs:string($account.firstname) }</first_name>
            <last_name>{ xs:string($account.lastname) }</last_name>
            { 
              if (exists($account.company))
              then <company_name>{ xs:string($account.company) }</company_name>
              else ()
            }
          </account>  
        )
    }
  };

  variable $response := http:send-request($request);
  
  if ($response("status") eq 201)
  then 
  {    
    insert json { "billing-account": $account-code } into $account;
    $account-code
  } 
  else
  { 
    fn:error(xs:QName("recurly-api:error"), "Cannot create recurly account");
  }  
};        

(:
 : Updates the recurly account (if any) of an account with its current values
 :)
declare %an:sequential function recurly-api:update-account-if-existing(
  $account as object)
as empty-sequence()
{
  variable $billing-account := recurly-api:billing-account($account);
  
  variable $request :=
  {
    "href": "https://api.recurly.com/v2/accounts/" || $billing-account,
    "method": "PUT",
    "headers":
    {
      "Accept": "application/xml",
      "Content-Type": "application/xml; charset=UTF-8",
      "Authorization": recurly-api:api-token()
    },
    "body":
    {
      "media-type": "application/xml",
      "content": serialize(
        <account>           
          <email>{ fn:data($account.email) }</email>
          <first_name>{ xs:string($account.firstname) }</first_name>
          <last_name>{ xs:string($account.lastname) }</last_name>
          { 
            if (exists($account.company))
            then <company_name>{ xs:string($account.company) }</company_name>
            else ()
          }
        </account>
      )
    }
  };

  variable $response := http:send-request($request);
  
  if ($response("status") eq 200)
  then ()
  else fn:error(xs:QName("recurly-api:error"), "Cannot update recurly account")
};

declare %an:sequential function recurly-api:list-subscriptions($account as object)
as array()
{
  variable $billing-account := recurly-api:billing-account($account);  
  if (not($billing-account))
  then exit returning [];
  else ();

  variable $request :=
  {
    "method": "GET",
    "href": "https://api.recurly.com/v2/accounts/" || $billing-account || "/subscriptions",
    "headers":
    {
      "Accept" : "application/xml",
      "Accept-Language": "en-US",
      "Authorization" : recurly-api:api-token()
    }
  };

  variable $response := http:send-request($request);
  if ($response("status") eq 200)
  then
    [
      for $subscription in members(recurly-api:array-result($response, ("a")))
      return $subscription
    ]
  else
    fn:error(xs:QName("recurly-api:error"), "Cannot retrieve subscription list")
};

declare %an:sequential function recurly-api:create-subscription($account as object, 
  $plan as xs:string, $quantity as xs:positiveInteger)
as object()
{
    recurly-api:create-subscription($account, $plan, $quantity, ())
};

declare %an:sequential function recurly-api:create-subscription($account as object, 
  $plan as xs:string, $quantity as xs:positiveInteger, $coupon-code as xs:string?)
as object()
{
  recurly-api:verify-billing-information($account);
  
  recurly-api:create-recurly-subscription($account, $plan, $quantity, $coupon-code)
};

declare %private %an:sequential function recurly-api:create-recurly-subscription($account as object, 
  $plan as xs:string, $quantity as xs:positiveInteger, $coupon-code as xs:string?)
as object()
{
  variable $account-code := recurly-api:billing-account($account);
  variable $today := fn:current-date() + xs:dayTimeDuration("P1D");
  variable $renewal := functx:date(fn:year-from-date($today), fn:month-from-date($today), functx:days-in-month($today));
  
  variable $request :=
  {
    "method": "POST",
    "href":  "https://api.recurly.com/v2/subscriptions",
    "headers":
    {
        "Accept": "application/xml",
        "Authorization": recurly-api:api-token()
    },
    "body":
    {
       "media-type": "application/xml;charset=UTF-8",
       "content": serialize(
                    <subscription>
                      <plan_code>{ $plan }</plan_code>
                      <currency>USD</currency>
                      <quantity>{ $quantity }</quantity>{ 
                          if (exists($coupon-code))
                          then <coupon_code>{ $coupon-code }</coupon_code>
                          else ()
                      }<first_renewal_date type="date">{ $renewal }</first_renewal_date>
                      <account>
                         <account_code>{ $account-code }</account_code>
                      </account>
                    </subscription>
        )
    }
  };
  
  variable $response := http:send-request($request);
  
  if ($response("status") eq 201)
  then recurly-api:object-result($response, ("a"))    
  else fn:error(xs:QName("recurly-api:error"), "Cannot create recurly subscription")
};

declare %an:sequential function recurly-api:get-subscription($account as object, 
  $subscription-uuid as xs:string)
as object()
{
  variable $billing-account := recurly-api:billing-account($account);
  if (not($billing-account))
  then
    fn:error(xs:QName("recurly-api:error"), "Subscription not found");
  else ();
  
  variable $request :=
  {
    "method": "GET",
    "href": "https://api.recurly.com/v2/subscriptions/" || $subscription-uuid,
    "headers":
    {
      "Accept" : "application/xml",
      "Accept-Language": "en-US",
      "Authorization" : recurly-api:api-token()
    }
  };

  variable $response := http:send-request($request);
  variable $xml-response := recurly-api:xml-response($response);
  
  if (substring-after(data($xml-response/account/@href), "https://api.recurly.com/v2/accounts/") eq $billing-account)
  then ();
  else 
    fn:error(xs:QName("recurly-api:error"), "Subscription not found");
  
  if ($response("status") = 200)
  then recurly-api:object-result($response, ("a"))  
  else if ($response("status") = 404)
  then
    fn:error(xs:QName("recurly-api:error"), "Subscription not found")
  else
    fn:error(xs:QName("recurly-api:error"), "Cannot retrieve subscription")
};

declare %an:sequential function recurly-api:update-subscription($account as object, 
  $subscription-uuid as xs:string, $quantity as xs:positiveInteger)
as object()
{
  recurly-api:verify-billing-information($account);
  recurly-api:get-subscription($account, $subscription-uuid);
  
  variable $request :=
  {
    "method": "PUT",
    "href":  "https://api.recurly.com/v2/subscriptions/" || $subscription-uuid,
    "headers":
    {
        "Accept": "application/xml",
        "Authorization": recurly-api:api-token()
    },
    "body":
    {
      "media-type": "application/xml;charset=UTF-8",
      "content": serialize(
                   <subscription>
                     <timeframe>now</timeframe>
                     <quantity>{$quantity}</quantity>
                   </subscription>
       )
    }
  };
  
  variable $response := http:send-request($request);
  
  variable $xml-response := recurly-api:xml-response($response);
  variable $billing-account := recurly-api:billing-account($account);
  if (substring-after(data($xml-response/account/@href), "https://api.recurly.com/v2/accounts/")
    eq $billing-account)
  then ();
  else 
  {
    fn:error(xs:QName("recurly-api:error"), "Subscription not found");
  }    
  
  if ($response("status") eq 200)
  then recurly-api:object-result($response, ("a"))
  else if ($response("status") eq 422)
  then
  {
    fn:error(xs:QName("recurly-api:error"), "Cannot update recurly subscription"); 
  }
  else
  {
    fn:error(xs:QName("recurly-api:error"), "Cannot update recurly subscription");
  }
};

declare %an:sequential function recurly-api:terminate-subscription($account as object, 
  $subscription-uuid as xs:string)
as object()
{
  recurly-api:verify-billing-information($account);
  recurly-api:get-subscription($account, $subscription-uuid);
  
  recurly-api:terminate-recurly-subscription($account, $subscription-uuid)
};

declare %an:sequential %private function recurly-api:terminate-recurly-subscription(
  $subscription-uuid as xs:string)
  as object()
{
  variable $request :=
  {
    "method": "PUT",
    "href":  "https://api.recurly.com/v2/subscriptions/" || $subscription-uuid || "/terminate?refund=none",
    "headers":
    {
      "Accept": "application/xml",
      "Authorization": recurly-api:api-token()
    },
    "body":
    {
      "media-type": "application/xml;charset=UTF-8",
      "content": serialize(<subscription/>)
    }
  };
  
  variable $response := http:send-request($request);
  
  if ($response("status") eq 200)
  then 
  {
    recurly-api:object-result($response, ("a"))
  }
  else if ($response("status") eq 422)
  then
  {
    fn:error(xs:QName("recurly-api:error"), "Cannot terminate recurly subscription"); 
  }
  else
  {
    fn:error(xs:QName("recurly-api:error"), "Cannot terminate recurly subscription");
  }
};

declare %an:sequential function recurly-api:list-invoices($account as object, 
  $cursor as xs:string?, $limit as xs:positiveInteger?)
as object()
{

  variable $billing-account := recurly-api:billing-account($account);  
  if (not($billing-account))
  then exit returning { "count": 0, "invoices": [] };
  else ();

  variable $arguments := 
    string-join(
      (
          if ($cursor) then ("cursor=" || fn:encode-for-uri($cursor)) else (),
          if ($limit) then ("per_page=" || $limit) else ()
      ), "&");

  variable $request :=
  {
    "method": "GET",
    "href": "https://api.recurly.com/v2/accounts/" || $billing-account || "/invoices" || 
      (if ($arguments) then ("?" || $arguments) else ""),
    "headers":
    {
      "Accept" : "application/xml",
      "Accept-Language": "en-US",
      "Authorization" : recurly-api:api-token()
    }
  };

  variable $response := http:send-request($request);
  if ($response("status") = 200)
  then
  {
    let $json-response := recurly-api:array-result($response, ("first_six", "details"), ("subscription"))
    return
    {|
      if ($response("headers")("X-Records"))
      then 
        try
        {
            { "count": xs:integer($response("headers")("X-Records")) }
        }
        catch *
        {{
          fn:error(xs:QName("recurly-api:error"), "Cannot parse recurly response");    
        }}
      else (),
      
      recurly-api:parse-link-header($response("headers")("Link")),
    
      { "invoices":  [for $invoice in members($json-response) return $invoice] }
    |}
  }
  
  else
  {
    fn:error(xs:QName("recurly-api:error"), "Cannot retrieve invoices list");
  }
};

declare function recurly-api:parse-link-header($link-header as xs:string?) as object?
{
  if ($link-header)
  then
    let $links := tokenize($link-header, ",\\s*")
    return
    {|
      for $link in $links
      return
        let $rel := substring-before(substring-after($link, "rel=\""), "\"")
        let $cursor := substring-before(substring-before(substring-after($link, "cursor="), ">"), "&")
        return { $rel : $cursor }
    |}
  else ()
};

declare %an:sequential function recurly-api:get-invoice($account as object, 
  $invoice-number as xs:string)
as object()
{
  variable $billing-account := recurly-api:billing-account($account);  
  if (not($billing-account))
  then
  { 
    fn:error(xs:QName("recurly-api:error"), "Invoice not found");
  }
  else ();
    
  variable $request :=
  {
    "method": "GET",
    "href": "https://api.recurly.com/v2/invoices/" || $invoice-number,
    "headers":
    {
      "Accept" : "application/xml",
      "Accept-Language": "en-US",
      "Authorization" : recurly-api:api-token()
    }
  };
  
  variable $response := http:send-request($request);

  if ($response("status") eq 200)
  then
  {
    recurly-api:object-result($response, ("first_six", "details"), ("subscription"))
  }
  else if ($response("status") eq 404)
  then
  { 
    fn:error(xs:QName("recurly-api:error"), "Invoice not found");
  }
  else
  {
     fn:error(xs:QName("recurly-api:error"), "Cannot retrieve JSON invoice");
  }  
};

declare %an:sequential function recurly-api:get-pdf-invoice($account as object, 
  $invoice-number as xs:string)
as xs:base64Binary
{
  variable $billing-account := recurly-api:billing-account($account);  
  if (not($billing-account))
  then
  { 
    fn:error(xs:QName("recurly-api:error"), "Invoice not found");
  }
  else ();
  
  variable $request :=
  {
    "method": "GET",
    "href": "https://api.recurly.com/v2/invoices/" || $invoice-number,
    "headers":
    {
      "Accept" : "application/pdf",
      "Accept-Language": "en-US",
      "Authorization" : recurly-api:api-token()
    }
  };
  
  variable $response := http:send-request($request);

  if ($response("status") eq 200)
  then recurly-api:base64Binary-result($response)
  else if ($response("status") eq 404)
  then
  { 
    fn:error(xs:QName("recurly-api:error"), "Invoice not found");
  }
  else
  {
     fn:error(xs:QName("recurly-api:error"), "Cannot retrieve PDF invoice");
  }  
};

(:
 : Checks that the account has a corresponding recurly account and billing information
 :)
declare %an:nondeterministic function recurly-api:verify-billing-information(
  $account as object)
as empty-sequence()
{
  if (recurly-api:get-billing-info($account)("billingData"))
  then ();
  else fn:error(xs:QName("recurly-api:error"), "The account has no billing information");
};

declare function recurly-api:verify-billable-package($package as object)
as xs:string
{
  if (exists($package.recurly-name))
  then data($package.recurly-name)
  else fn:error(xs:QName("recurly-api:error"), "The package '" || $package.name ||
    "' cannot be subscribed as it has no recurly name")  
};

(:
 : Private functions
 :)


(:
 : Returns the recurly API key
 :)
declare %private function recurly-api:api-token() 
as xs:string 
{
  "Basic " || base64:encode(recurly-api:api-key())
};

(:
 : Returns the recurly API key
 :)
declare %private function recurly-api:api-key() 
as xs:string 
{
  "a4c9a1f86444463b80173a5597250b63"
};

(:
 : Returns the recurly private key
 :)
declare %private function recurly-api:private-key()
as xs:string 
{
  "63df972b12fe48dc862eb3aa55d19d66"
};

(:
 : Creates a Recurly signature for the given account
 :)
declare %private %an:sequential function recurly-api:signature($account as object)
as xs:string
{
  let $billing-account := recurly-api:ensure-billing-account($account)
  let $nonce := random:uuid()
  let $unix-timestamp := xs:long((current-dateTime() - xs:dateTime("1970-01-01T00:00:00-00:00")) 
    div xs:dayTimeDuration("PT1S"))
  return recurly-api:create-signature($nonce, $unix-timestamp, { "account[account_code]" : $billing-account })
};

(:
 : Returns the recurly subdomain
 :)
declare %private %an:sequential function recurly-api:subdomain()
as xs:string 
{
  "28msec-dev"
};

declare %private function recurly-api:billing-account($account as object)
as xs:string?
{
  data($account.billing-account)
};

(:
 : Creates a Recurly signature for the given nonce, timestamp and Recurly account
 :)
declare %private function recurly-api:create-signature($nonce as xs:string, $timestamp as xs:long, 
  $kvp as object())
as xs:string
{
  variable $urlParameters := fn:string-join(
    ( 
      "nonce=" || fn:encode-for-uri($nonce), 
      "timestamp=" || fn:encode-for-uri(xs:string($timestamp)),
      for $key in jn:keys($kvp)
      return $key || "=" || fn:encode-for-uri($kvp($key))
    ), "&"
  );
  
  variable $sign := fn:lower-case(xs:string(xs:hexBinary(hmac:sha1($urlParameters, recurly-api:private-key()))));

  $sign || "|" || $urlParameters     
};

declare %private function recurly-api:xml-field(
  $object as object(),
  $field-name as xs:string, 
  $element-name as string,
  $mandatory as xs:boolean) as element()?
{
  let $value := $object($field-name)
  return 
    if (exists($value) and string-length(string($value)) gt 0)
    then element {$element-name} {$value}
    else
      if ($mandatory)
      then fn:error(xs:QName("recurly-api:error"), "The required field " || $field-name || " is missing") 
      else ()
};

declare %private %an:sequential function recurly-api:json-name($node as node()) as xs:string
{
  let $name := fn:local-name($node)
  let $parts := tokenize($name, "_")
  return string-join(($parts[1],
    for $part in subsequence($parts,2)
    return concat(upper-case(substring($part,1,1)), substring($part,2))),
    "")
};

declare %private %an:sequential function recurly-api:error-result($response as object()) as object()
{
  let $xml-response := recurly-api:xml-response($response)
  return
  {|      
    { 
      "errors":  
      [
        for $error in $xml-response/*:error 
        return
        {|
          for $node in $error/@*
          return { fn:local-name($node) : data($node) },
          { "description": string($error) }
        |}
      ] 
    },
    
    let $transaction-error := $xml-response/*:transaction_error
    return 
      if ($transaction-error)
      then {"transactionError": recurly-api:json-result($transaction-error, ("merchant_message"))}
      else ()
  |}
};

declare %private %an:sequential function recurly-api:object-result(
  $response as object(),
  $exclude as xs:string*)
  as object()
{
  recurly-api:object-result($response, $exclude, ())
};

declare %private %an:sequential function recurly-api:object-result(
  $response as object(),
  $exclude as xs:string*,
  $include-href as xs:string*)
  as object()
{
    let $xml-response := recurly-api:xml-response($response)
    let $result := recurly-api:json-result($xml-response, $exclude, $include-href)
    return 
      if ($result instance of object())
      then $result      
      else
      {
        fn:error(xs:QName("recurly-api:error"), 
          "Cannot parse recurly response, unexpected response format");
      }    
};

declare %private %an:sequential function recurly-api:array-result(
  $response as object(), 
  $exclude as xs:string*)
  as array()
{
   recurly-api:array-result($response, $exclude, ())
};

declare %private %an:sequential function recurly-api:array-result(
  $response as object(), 
  $exclude as xs:string*,
  $include-href as xs:string*) 
  as array()
{
    let $xml-response := recurly-api:xml-response($response)
    let $result := recurly-api:json-result($xml-response, $exclude, $include-href)
    return 
      if ($result instance of array())
      then $result
      else
      {
        fn:error(xs:QName("recurly-api:error"), 
          "Cannot parse recurly response, unexpected response format");
      }
};

declare %private %an:sequential function recurly-api:base64Binary-result($response as object())
  as xs:base64Binary
{
    let $result := $response("body")("content")
    return 
      if ($result instance of xs:base64Binary)
      then $result
      else
      {
        fn:error(xs:QName("recurly-api:error"), 
          "Cannot parse recurly response, unexpected response format");
      }
};

declare %private %an:sequential function recurly-api:json-result($xml-response as element()?) 
as item()?
{
  recurly-api:json-result($xml-response, (), ())
};

declare %private %an:sequential function recurly-api:json-result($xml-response as element()?, 
$exclude as xs:string*) 
as item()?
{
  recurly-api:json-result($xml-response, $exclude, ())
};

declare %private %an:sequential function recurly-api:json-result($element as element(), 
$exclude as xs:string*, $include-href as xs:string*) 
as item()?
{
  if (exists($element/@type) and $element/@type = ("integer", "datetime", "boolean", "float"))
  then
  (
    switch (data($element/@type))
      case "integer" return xs:integer($element/text())
      case "datetime" return xs:dateTime($element/text())
      case "boolean" return xs:boolean($element/text())
      case "float" return xs:float($element/text())
      default return () 
  )
  else
    if ($element/@type eq "array")
    then ([for $child in $element/* return recurly-api:json-result($child, $exclude, $include-href)])
    else 
      if ($element/* and
            (
              $element/*[not(fn:local-name($$) = $exclude) and (not($$/@nil) or $$/@nil ne "nil")]
              or
              $element/@*[not(fn:local-name($$) = ("code", "href"))]
            )
         )
      then 
      {|
        for $attr in $element/@*[not(local-name($$) = ("code", "href"))]
        let $name := recurly-api:json-name($attr)
        let $value := data($attr)
        return if (exists($value)) then { $name : $value } else (),
      
        for $child in $element/*[not(fn:local-name($$) = $exclude) and (not($$/@nil) or $$/@nil ne "nil")]
        let $name := recurly-api:json-name($child)
        let $value := recurly-api:json-result($child, $exclude, $include-href)
        return if (exists($value)) then { $name : $value } else ()          
      |}
      else 
        if ($element/text())
        then 
          if ($element/@*[not(local-name($$) = ("code", "href"))])
          then
          {|
            for $attr in $element/@*[not(local-name($$) = ("code", "href"))]
            let $name := recurly-api:json-name($attr)
            let $value := data($attr)
            return if (exists($value)) then { $name : $value } else (),
            
            {"value": string($element)}
          |}
          else string($element)
        else 
          if ($element/@*[local-name($$) eq "href"] and local-name($element) = $include-href)
          then replace(string($element/@href), "^.*/", "")
          else ()
};

declare %private %an:sequential function recurly-api:xml-response($response as object()) 
as element()?
{
  try
  {{
    replace value of json $response("body")("content") with 
      string:materialize($response("body")("content"));
    parse-xml($response("body")("content"))/*
  }}
  catch * 
  {{
    fn:error(xs:QName("recurly-api:error"), "The recurly answer cannot be parsed")
  }}
};
