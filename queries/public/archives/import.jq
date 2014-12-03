import module namespace random = "http://zorba.io/modules/random";
import module namespace archive = "http://zorba.io/modules/archive";
import module namespace http = "http://zorba.io/modules/http-client";
import module namespace mongo = "http://www.28msec.com/modules/mongodb";

declare namespace api = "http://apps.28.io/api";

(: Query parameters :)
declare %rest:case-insensitive  variable $archiveId     as string       external := random:uuid();
declare %rest:case-insensitive  variable $profileName   as string       external := "NOPROFILE";
declare %rest:case-insensitive  variable $overwrite     as boolean      external := false();
declare %rest:header            variable $content-type  as string       external := "text/plain";
declare %rest:body-text         variable $body-text     as string       external;
declare %rest:body-binary       variable $body-binary   as base64Binary external;

declare variable $INFOSET-ENDPOINT := "http://infoset-generator.28.io/cgi-bin/v6/";
declare variable $TOKEN := "foo";
declare variable $CONN := mongo:connect("xbrl");

declare %an:sequential function local:ensure-non-existent() as ()
{
    if (count((mongo:find($CONN, "archive", { _id: $archiveId }),
    mongo:find($CONN, "components", { Archive: $archiveId }),
    mongo:find($CONN, "concepts", { Archive: $archiveId }),
    mongo:find($CONN, "facts", { "Aspects.xbrl28:Archive": $archiveId }),
    mongo:find($CONN, "footnotes", { Archive: $archiveId }))))
    then
        error(QName("local:CONFLICT"), $archiveId || ": an archive with the same archive id already exists"); 
    else
        ();
};

declare %an:sequential function local:remove-archive() as ()
{
    mongo:remove($CONN, "archive", { _id: $archiveId }),
    mongo:remove($CONN, "components", { Archive: $archiveId }),
    mongo:remove($CONN, "concepts", { Archive: $archiveId }),
    mongo:remove($CONN, "facts", { "Aspects.xbrl28:Archive": $archiveId }),
    mongo:remove($CONN, "footnotes", { Archive: $archiveId })
};

declare %an:sequential function local:import-filing($processed-archive as base64Binary) as object
{
    if ($overwrite)
    then local:remove-archive();
    else ();
    
    let $archive := parse-json(archive:extract-text($processed-archive, "archives.json"))
    return
    {
        "success": true,
        "archiveId": $archive._id,
        "statistics": $archive.Statistics,
        "import":
        {|
            for $entry in archive:entries($processed-archive)
            let $name := $entry.name
            let $collection := fn:substring-before($name, ".")
            let $text := archive:extract-text($processed-archive, $name)
            let $json := parse-json($text)
            return 
            {
                for $object in $json
                return mongo:save($CONN, $collection, $object);
                { $collection: count($json) }
            }
        |}
    }
};

declare %an:sequential function local:import-from-url() as object
{
  let $filingURI := $body-text
  let $url := $INFOSET-ENDPOINT || "import-from-url.cgi" || 
    "?archiveId=" || encode-for-uri($archiveId) ||
    "&profile=" || $profileName ||
    "&overwrite=" || string($overwrite) ||
    "&token=" || encode-for-uri($TOKEN) ||
    "&filingUrl=" || encode-for-uri(string($filingURI))
  let $processed-filing := http:get($url)
  return 
      if ($processed-filing("status") eq 200)
      then local:import-filing($processed-filing("body")("content"))
      else error(QName("api:PROCESSOR"), $processed-filing("body")("content"))
};

declare %an:sequential function local:import-from-xbrl-filing() as object
{
  {}
};

declare %an:sequential function local:import-from-archive() as object
{
  {}
};

(: Validate query parameters :)
variable $profileName := upper-case($profileName);

if (not($profileName = ("SEC", "SVS", "UK", "DUTCH", "NOPROFILE")))
then error(QName("api:PROFILE"), $profileName || ": unsupported profile, allowed profiles are: SEC, SVS, UK, DUTCH, and NOPROFILE");
else ();

if (not($overwrite))
then local:ensure-non-existent();
else ();

switch ($content-type)
  case "text/plain" return local:import-from-url()
  case "application/xml" return local:import-from-xbrl-filing()
  case "application/zip" return local:import-from-archive()
  default return error(QName("api:ARCHIVE"), $content-type || ": unsupported archive format, allowed content-types are: text/plain, application/xml and application/zip")
