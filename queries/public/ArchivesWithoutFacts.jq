import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace facts = "http://xbrl.io/modules/bizql/facts";
import module namespace store = "http://www.28msec.com/modules/store";
declare namespace ext = "http://zorba.io/extensions";


variable $name := "Archives_Without_Facts";

(# ext:no-materialization #) {
    for $a at $position in archives:archives()[position() lt 5000]
    where empty(facts:facts-for-archives($a))
    return {
        insert($name, $a);
        store:flush-if ($position mod 10 eq 0);
        store:clear-if($position mod 10 eq 0);
        ()
    }
};
store:flush();

(:truncate($name);:)