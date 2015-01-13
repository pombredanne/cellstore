jsoniq version "1.0";
module namespace mw = "http://28.io/modules/xbrl/profiles/japan/mongo-wrapper";

(: Indexes declarations :)
declare variable $mw:ARCHIVES-ID as string := "_id_";
declare variable $mw:ARCHIVES-ENTITY as string := "Entity_hashed";

declare variable $mw:COMPONENTS-ID as string := "_id_";
declare variable $mw:COMPONENTS-ARCHIVE as string := "Archive_hashed";
declare variable $mw:COMPONENTS-PROFILE_JAPAN_DISCLOSURE as string := "Profiles.FSA.Disclosure_hashed";
declare variable $mw:COMPONENTS-ROLE as string := "Role_hashed";

declare variable $mw:CONCEPTS-ID as string := "_id_";
declare variable $mw:CONCEPTS-ARCHIVE-ROLE-NAME as string := "Archive_1_Role_1_Name_1";
declare variable $mw:CONCEPTS-NAME-ARCHIVE as string := "Name_1_Archive_1";

declare variable $mw:ENTITIES-ID as string := "_id_";
declare variable $mw:ENTITIES-PROFILES_JAPAN_SIC as string := "Profiles.FSA.SIC_hashed";
declare variable $mw:ENTITIES-PROFILES_JAPAN_INDUSTRY as string := "Profiles.FSA.Industry_hashed";
declare variable $mw:ENTITIES-PROFILES_JAPAN_TAGS as string := "Profiles.FSA.Tags_1";
declare variable $mw:ENTITIES-PROFILES_JAPAN_TICKERS as string := "Profiles.FSA.Tickers_1";
declare variable $mw:ENTITIES-PROFILES_JAPAN_SUBMITTERTYPE as string := "Profiles.FSA.SubmitterType_hashed";

declare variable $mw:FACTS-ID as string := "_id_";
declare variable $mw:FACTS-AXCONCEPT_AXENTITY_AJFY_AJFP as string := "Aspects.xbrl:Concept_1_Aspects.xbrl:Entity_1_Aspects.japan:FiscalYear_1_Aspects.japan:FiscalPeriod_1";
declare variable $mw:FACTS-ASARCHIVE_AXCONCEPT as string := "Aspects.xbrl28:Archive_1_Aspects.xbrl:Concept_1";

declare variable $mw:FOOTNOTES-ID as string := "_id_";
declare variable $mw:FOOTNOTES-ARCHIVE as string := "Archive_hashed";
declare variable $mw:FOOTNOTES-FACTS_ID-LANG as string := "Facts._id_1_Lang_1";

declare variable $mw:ALL-INDEXES as object :=
{
  "archives" :  [ $mw:ARCHIVES-ID, $mw:ARCHIVES-ENTITY ],
  "components": [ $mw:COMPONENTS-ID, $mw:COMPONENTS-ARCHIVE, $mw:COMPONENTS-PROFILE_JAPAN_DISCLOSURE,
                  $mw:COMPONENTS-ROLE ],
  "concepts":   [ $mw:CONCEPTS-ID, $mw:CONCEPTS-ARCHIVE-ROLE-NAME, $mw:CONCEPTS-NAME-ARCHIVE ],
  "entities":   [ $mw:ENTITIES-ID, $mw:ENTITIES-PROFILES_JAPAN_SIC, $mw:ENTITIES-PROFILES_JAPAN_INDUSTRY,
                  $mw:ENTITIES-PROFILES_JAPAN_TAGS, $mw:ENTITIES-PROFILES_JAPAN_TICKERS,
                  $mw:ENTITIES-PROFILES_JAPAN_SUBMITTERTYPE ],
  "facts":      [ $mw:FACTS-ID, $mw:FACTS-AXCONCEPT_AXENTITY_AJFY_AJFP, $mw:FACTS-ASARCHIVE_AXCONCEPT ],
  "footnotes":  [ $mw:FOOTNOTES-ID, $mw:FOOTNOTES-ARCHIVE, $mw:FOOTNOTES-FACTS_ID-LANG ]
};

declare function mw:hint($collection as string, $query as object) as object
{
  switch($collection)
    case "archives"
      return mw:archives-hint($query)
    case "components"
      return mw:components-hint($query)
    case "concepts"
      return mw:concepts-hint($query)
    case "entities"
      return mw:entities-hint($query)
    case "facts"
      return mw:facts-hint($query)
    case "footnotes"
      return mw:footnotes-hint($query)
    default
      return $query
};

declare %private function mw:archives-hint($query as object) as object
{
  switch (true)
    case (exists($query("_id")))
      return { "$query": $query, "$hint": $mw:ARCHIVES-ID }
    case (exists($query("Entity")))
      return { "$query": $query, "$hint": $mw:ARCHIVES-ENTITY }
    default
      return $query
};

declare %private function mw:components-hint($query as object) as object
{
  switch (true)
    case (exists($query("_id")))
      return { "$query": $query, "$hint": $mw:COMPONENTS-ID }
    case (exists($query("Archive")))
      return { "$query": $query, "$hint": $mw:COMPONENTS-ARCHIVE }
    case (exists($query("Profiles.FSA.Disclosure")))
      return { "$query": $query, "$hint": $mw:COMPONENTS-PROFILE_JAPAN_DISCLOSURE }
    case (exists($query("Role")))
      return { "$query": $query, "$hint": $mw:COMPONENTS-ROLE }
    default
      return $query
};

declare %private function mw:concepts-hint($query as object) as object
{
  (:
     Q      I
     N   -> NA
     R   -> DEF
     RN  -> DEF
     A   -> ARN
     AN  -> NA
     AR  -> ARN
     ARN -> ARN
  :)
  switch (true)
    case (exists($query("_id")))
      return { "$query": $query, "$hint": $mw:CONCEPTS-ID }
    case (exists($query("Archive")) and (not(exists($query("Name"))) or exists($query("Role"))))
      return { "$query": $query, "$hint": $mw:CONCEPTS-ARCHIVE-ROLE-NAME }
    case (exists($query("Name")))
      return { "$query": $query, "$hint": $mw:CONCEPTS-NAME-ARCHIVE }
    default
      return $query
};

declare %private function mw:entities-hint($query as object) as object
{
  switch (true)
    case (exists($query("_id")))
      return { "$query": $query, "$hint": $mw:ENTITIES-ID }
    case (exists($query("Profiles.FSA.SIC")))
      return { "$query": $query, "$hint": $mw:ENTITIES-PROFILES_JAPAN_SIC }
    case (exists($query("Profiles.FSA.Industry")))
      return { "$query": $query, "$hint": $mw:ENTITIES-PROFILES_JAPAN_INDUSTRY }
    case (exists($query("Profiles.FSA.Tags")))
      return { "$query": $query, "$hint": $mw:ENTITIES-PROFILES_JAPAN_TAGS }
    case (exists($query("Profiles.FSA.Tickers")))
      return { "$query": $query, "$hint": $mw:ENTITIES-PROFILES_JAPAN_TICKERS }
    case (exists($query("Profiles.FSA.SubmitterType")))
      return { "$query": $query, "$hint": $mw:ENTITIES-PROFILES_JAPAN_SUBMITTERTYPE }
    default
      return $query
};

declare %private function mw:facts-hint($query as object) as object
{
    switch (true)
    case (exists($query("_id")))
      return { "$query": $query, "$hint": $mw:FACTS-ID }
    case (mw:is-selective($query, "Aspects.xbrl:Concept") and
          mw:is-selective($query, "Aspects.xbrl:Entity"))
      return { "$query": $query, "$hint": $mw:FACTS-AXCONCEPT_AXENTITY_AJFY_AJFP }
    case (mw:is-selective($query, "Aspects.xbrl28:Archive"))
      return { "$query": $query, "$hint": $mw:FACTS-ASARCHIVE_AXCONCEPT }
    default
      return $query
};

declare %private function mw:footnotes-hint($query as object) as object
{
    switch (true)
    case (exists($query("_id")))
      return { "$query": $query, "$hint": $mw:FOOTNOTES-ID }
    case (exists($query("Archive")))
      return { "$query": $query, "$hint": $mw:FOOTNOTES-ARCHIVE }
    case (exists($query("Facts._id")))
      return { "$query": $query, "$hint": $mw:FOOTNOTES-FACTS_ID-LANG }
    default
      return $query
};

(:
  Heuristics detection of whether a condition in the query is selective and should be
  used to decide the index to use
:)
declare %private function mw:is-selective($query as object, $field as string) as boolean
{
    exists($query($field)) and
      (
        not($query($field) instance of object) or (: Equality checks are of type atomic - not object - other kinds are disallowed :)
        exists($query($field)("$in")) (: $in operator :)
      )
};
