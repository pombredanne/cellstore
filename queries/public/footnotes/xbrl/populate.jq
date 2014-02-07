import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace components = "http://xbrl.io/modules/bizql/components";

import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";

(:
  Populates an SEC table with facts from an EXXON MOBIL CORP archive and 
  include all XBRL footnotes.
  
  For more info about XBRL footnotes see section "4.11 Footnotes" of the 
  XBRL 2.1 specification
:)

(: select an archive :)
let $archive := archives:archives("0000034088-13-000011")

(: select a component from the archive:)
let $component := components:components-for-archives($archive)
  [contains($$.Label, "041605 - Disclosure - Pension And Other Postretirement Benefits")]
    
(: select a network from the component () :)
let $network := $component.Networks[][$$.ShortName = "DomainMember"]

(: select a hypercube from the component (in this case an SEC table) :)
let $hypercube := $component.Hypercubes."us-gaap:DefinedBenefitPlansAndOtherPostretirementBenefitPlansDisclosuresTable"

(: populate SEC table including all footnotes :)
return 
  sec:populate-networks-with-facts($network, $hypercube, $archive, { include-footnotes: true })
