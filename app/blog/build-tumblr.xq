import module namespace fs = "http://expath.org/ns/file";

(: Generate Index :)

let $summaries := {
"81678006917": "We are excited to announce a new way you to explore financial and business information: secxbrl.info.",
"81481636286": "Using the JSONiq query language, you can easily extract data from web pages. As an example we created a “web scraper” that allows you to convert HTML table data to CSV format.",
"81374610314": "This is a tutorial for using JSONiq to interface with an external web API to process JSON data.",
"78740141630": "This is a tutorial for the CSV JSONiq module that “… provides an API for parsing and serializing CSV (comma-separated values) files.”",
"65022047192" : "28msec is proud to be a Premier Exhibitor at the Strata Conference in London, England, November 11 - 13, 2013. If the conference organizers are asking you to become an active driver of your data, then let us show you the steering wheel and the accelerator that you will need to race into the future.",
"65020666933": "The challenge of eDiscovery lies in the processing of a variety of data formats from different data sources under high time pressure. In this white paper, we describe how 28.io and JSONiq provide a solution to seamlessly combine search and query, so that analyst time is spent where is matters most: in the interpretation of the results.",
"64777937839": '28.io will be exhibiting at the Strata Conference in New York, NY, October 28 - 30, 2013. This is an excellent venue to showcase our technology because we share the passion of the conference: "Making Data Work."',
  "58423239104": 'On August 26h during the next ACM event in silicon valley, 28.io CTO Matthias Brantner will present a "A Big Data Solution using JSONiq." 
  If you are in the area, be sure to check it out.',

  "56455801961": 'Nowadays organizations have a variety of different data storage technologies for different kinds of data. From relational databases to document stores and cloud services. And because each technology has its own data model and interface to be learned, it can be extremely challenging to process these different sources into valuable information.',

  "56226766999": 'Today, 28.io CTO Matthias Brantner will be interviewed about JSONiq and modern query processing techniques for today’s data challenges. Be sure to subscribe to the webinar.',


 "55287031023":  "If you are in the Bavaria region next week, make sure to attend the JSONiq introduction from Alexander Kreutz at the Munich MongoDB meetup. Alexander will give a high-level overview about JSONiq and about the importance of declarative query languages in the NoSQL space.",

 "54710364207": "Last month, Matthias Brantner presented the company at GigaOM Structure 2013 LaunchPad. You can checkout the presentation below.",

 "52705750475": "Last April, at NoSQL Matters Cologne, Jan Steemann from triAGENS gave an excellent overview of query languages for document stores. We hope that you will enjoy the video of his presentation",

 "52627762863": "On June 20th, 28.io CTO Matthias Brantner will battle it out with five other startups at the GigaOM Structure LaunchPad. Matthias will present our commitment to transform information processing into a commodity. In the same way NoSQL document stores are transforming the database landscape, we believe that JSONiq, the SQL of NoSQL, will significantly lower the amount of work and resources required to transform flexible data into actionable information.",

 "52380807156": "The NoSQL movement is breaking free from the flat and rigid relational data model. By doing so, developers are losing the industry standard query language: SQL. SQL doesn’t provide any semantics for navigating, constructing, or comparing hierarchical data. The lack of high level query languages in the SQL space put a tremendous amount of pressure on NoSQL developers.",

 "51483608622": "Windowing queries are extremely useful to perform analysis on sequential data. We have set up a short screencast that showcases an example of a windowing query on top of a MongoDB deployment. We hope that you will check it out.",

 "50508198602": "When it comes to turn your MongoDB data into actionable information, JSONiq takes your productivity to a new level. And it’s easy to get started with. On top of the demo queries that are available, we produced a short screencast that showcases simple yet powerful queries written with JSONiq. We hope that you will enjoy it.",

 "48613691865": "We are very pleased to announce the first release of 28.io, our query platform for MongoDB. At 28msec, we believe that a productive query language can transform a scalable document store into a full-fledged database management system. Our goal is to remove the burden of implementing and optimizing complex query processing from MongoDB users so they can focus on building features for their business."
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
    return {
      "title": $title,
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
  <link href="http://www.28.io/blog/atom.xml"/>
  <updated>{current-dateTime()}</updated>
  <author>
    <name>28msec</name>
  </author>
  {
    for $entry in $index("entries") ! jn:members(.)
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
