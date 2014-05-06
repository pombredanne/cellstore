(: SVS OK :)
import module namespace entities ="http://xbrl.io/modules/bizql/entities";

declare function local:compute() as object* {
    for $entity in entities:entities()
    return {
        name: $entity.Profiles.SVS.CompanyName,
        tickers: $entity.Profiles.SVS.Tickers,
        rut: $entity.Profiles.SVS.RUT
    }
};
let $tuples:= local:compute()
return {
    entityNameTickerSymbolCikTuples:[$tuples]
}
