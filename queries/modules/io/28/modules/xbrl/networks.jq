jsoniq version "1.0";
(:
 : Copyright 2012-2013 28msec Inc.
 :)

(:~
 : <p>This module provides functionality for handling networks.</p>
 :
 : <p>A network is a graph of concepts and resources, of which the edges
 : share the same semantics.</p>
 : 
 : <p>There are several kinds of networks.
 : A network can be a tree or a DAG of concepts. It can be a bipartite
 : graph mapping concepts to resources.</p>
 :
 : <p>XBRL defines a number of standard networks: presentation, calculation,
 : definition (essence-alias, general-special, requires-element, similar-tuples, domain-member),
 : and label networks.</p>
 :
 : <p>With this module, you can retrieve the networks contained in a component, and you
 : can retrieve a standard XBRL network with the provided short names.</p>
 :
 : @author Charles Hoffman
 : @author Matthias Brantner
 : @author Dennis Knochenwefel
 : @author Ghislain Fourny
 :)
module namespace networks = "http://28.io/modules/xbrl/networks";

(:~
 : Short name of the presentation network.
 :)
declare variable $networks:PRESENTATION_NETWORK as xs:string := "Presentation";

(:~
 : Short name of the calculation network.
 :)
declare variable $networks:CALCULATION_NETWORK as xs:string := "Calculation";

(:~
 : Short name of the essence-alias definition network.
 :)
declare variable $networks:ESSENCE_ALIAS_NETWORK as xs:string := "EssenceAlias";

(:~
 : Short name of the general-special definition network.
 :)
declare variable $networks:GENERAL_SPECIAL_NETWORK as xs:string := "GeneralSpecial";

(:~
 : Short name of the requires-element definition network.
 :)
declare variable $networks:REQUIRES_ELEMENT_NETWORK as xs:string := "RequiresElement";

(:~
 : Short name of the similar-tuples definition network.
 :)
declare variable $networks:SIMILAR_TUPLES_NETWORK as xs:string := "SimilarTuples";

(:~
 : Short name of the domain-member definition network.
 :)
declare variable $networks:DOMAIN_MEMBER_NETWORK as xs:string := "DomainMember";

(:~
 : <p>Retrieves all networks in the supplied components.</p>
 :
 : @param $components a sequence of components.
 :
 : @return all networks.
 :)
declare function networks:networks-for-components($components as item*) as object*
{
  $components.Networks[]
};

(:~
 : <p>Retrieves the standardized networks in the supplied components with the given short names.</p>
 :
 : @param $components a sequence of components.
 : @param $short-name the short names of the networks.
 :
 : @return the standardized networks with these short names.
 :)
declare function networks:networks-for-components-and-short-names(
    $components as item*,
    $short-name as string*
) as object*
{
    $components.Networks[][$$.ShortName = $short-name]
};
