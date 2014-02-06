import module namespace archives = "http://xbrl.io/modules/bizql/archives";

(:
  Groups archives by generator.
:)
for $a in archives:archives()
let $generator := $a.Profiles.SEC.Generator
group by $generator
let $count := count($a)
order by $count descending
return
<foo>
  <generator>{ $generator}</generator>
  <num-archives>{$count}</num-archives>
</foo>
