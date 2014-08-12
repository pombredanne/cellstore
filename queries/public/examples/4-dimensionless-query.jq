import module namespace hypercubes = "http://28.io/modules/xbrl/hypercubes";
import module namespace companies = "http://28.io/modules/xbrl/profiles/sec/companies";

hypercubes:facts(
    hypercubes:dimensionless-hypercube({
        Concepts: ["us-gaap:Assets"],
        Entities: [ companies:companies-for-tags("DOW30") ]
    })
)
