import module namespace fs = "http://expath.org/ns/file";

(: Generate Index :)

let $summaries := {
  "85623075060": "Charles Hoffman posted a great article on secxbrl.info.",
  "85528073805": "Did you ever wonder how secxbrl.info is able to handle the huge amount of highly-dimensional data? Here is why.",
  "85127528110": "In this blog entry, we are addressing the following characteristics: Consistency, accuracy, and comparability. Specifically, we show how the custom report feature of secxbrl.info can be used as a framework for building functionality to verify those characteristics.",
  "81678006917": "We are excited to announce a new way you to explore financial and business information: secxbrl.info."
}

let $channel := doc("http://28-io.tumblr.com/rss")/rss/channel
let $index :=  {
  "title": $channel/title/text(),
  "tags": {|
    for $tag in distinct-values($channel/item/category/string())
    return { $tag: count($channel/category/[string() eq $tag]) }
  |},
  "entries": [
    for $entry in $channel/item
    let $title := $entry/title/string()
    let $title-id := replace($title, "[^\w ]", "") ! lower-case(.) ! replace(., "\s", "-")
    let $id := tokenize($entry/guid/string(), "/")[last()]
    where $id = jn:keys($summaries)
    return {
      "title": $title,
      "guid": $id,
      "id": "/" || $entry/guid/string() ! tokenize(., '/')[last()] || "/" || $title-id,
      "updated": $entry/pubDate/text(),
      "summary": $summaries($entry/guid/string() ! tokenize(., '/')[last()]),
      "content": $entry/description/string(),
      "tags": [
        for $cat in $entry/category
        return $cat/string()
      ]
    }
  ]
}
(:
let $rss := http:send-request(<http:request href="http://28-io.tumblr.com/rss" method="GET" />)[2]
:)
let $feed := <feed xmlns="http://www.w3.org/2005/Atom">
  <title>28.io - Blog</title>
  <link href="https://app.secxbrl.info/blog/atom.xml"/>
  <updated>{current-dateTime()}</updated>
  <author>
    <name>28msec</name>
  </author>
  {
    for $entry in $index("entries") ! jn:members(.)
    let $id := $entry("guid")
    where $id = jn:keys($summaries)
    return <entry>
      <title>{$entry("title")}</title>
      <id>{$entry("id")}</id>
      <summary>{$entry("summary")}</summary>
      <updated>{$entry("updated")}</updated>
      <content type="html">
      {$entry("content")}
      </content>
      {
        for $cat in $entry("tags") ! jn:members(.)
        return <category label="{$cat}" />
      }
    </entry>
  }
</feed>
return {
  fs:write-text("index.json", serialize($index, ()), "utf-8");
  fs:write-text("atom.xml", serialize($feed, ()), "utf-8");
}
