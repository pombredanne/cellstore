'use strict';

angular
.module('report-model')
.factory('SECReport', function(AbstractReport) {

    var SECReport = function(modelOrName, label, description, role, username, prefix){
        this.super(modelOrName, label, description, role, username, prefix);
    };

    SECReport.prototype=new AbstractReport();
    SECReport.prototype.type='SECReport';

    SECReport.prototype.newModel = function(id, label, description, username, role, prefix){
        var date = new Date();
        var defaultFiscalYear = date.getFullYear();
        var month = date.getMonth();
        if(month < 8){
            defaultFiscalYear = defaultFiscalYear - 1;
        }
        return {
            '_id' : id,
            'Archive' : null,
            'Label' : label,
            'Description': description,
            'Owner': username,
            'Role' : role,
            'Prefix': prefix,
            'Networks' : [
                {
                    'LinkName' : 'link:presentationLink',
                    'LinkRole' : role,
                    'ArcName' : 'link:presentationArc',
                    'ArcRole' : 'http://www.xbrl.org/2003/arcrole/parent-child',
                    'Kind' : 'InterConceptTreeNetwork',
                    'ShortName' : 'Presentation',
                    'CyclesAllowed' : 'undirected',
                    'Trees' : []
                }, {
                    'LinkName' : 'link:definitionLink',
                    'LinkRole' : role,
                    'ArcName' : 'link:definitionArc',
                    'ArcRole' : 'http://www.xbrlsite.com/2013/fro/arcrole/class-subClass',
                    'Kind' : 'InterConceptTreeNetwork',
                    'ShortName' : 'ConceptMap',
                    'CyclesAllowed' : 'undirected',
                    'Trees' : []
                }
            ],
            'Hypercubes' : {
                'xbrl28:ImpliedTable': {
                    'Name': 'xbrl28:ImpliedTable',
                    'Label': label + ' [Table]',
                    'Aspects': {
                        'xbrl:Concept': {
                            'Name': 'xbrl:Concept',
                            'Label': 'Concept [Axis]',
                            'Members': []
                        },
                        'xbrl:Period': {
                            'Name': 'xbrl:Period',
                            'Label': 'Period [Axis]',
                            'Kind' : 'TypedDimension',
                            'Type' : 'string'
                        },
                        'xbrl:Entity': {
                            'Name': 'xbrl:Entity',
                            'Label': 'Reporting Entity [Axis]',
                            'Kind' : 'TypedDimension',
                            'Type' : 'string',
                            'DomainRestriction' : {
                                'Name' : 'xbrl:EntityDomain',
                                'Label' : 'Reporting Entity [Domain]',
                                'Enumeration' : [ 'http://www.sec.gov/CIK 0001403161', 'http://www.sec.gov/CIK 0000004962', 'http://www.sec.gov/CIK 0000019617', 'http://www.sec.gov/CIK 0000030554', 'http://www.sec.gov/CIK 0000034088', 'http://www.sec.gov/CIK 0000040545', 'http://www.sec.gov/CIK 0000066740', 'http://www.sec.gov/CIK 0000078003', 'http://www.sec.gov/CIK 0000080424', 'http://www.sec.gov/CIK 0000093410', 'http://www.sec.gov/CIK 0000101829', 'http://www.sec.gov/CIK 0000310158', 'http://www.sec.gov/CIK 0000320187', 'http://www.sec.gov/CIK 0000354950', 'http://www.sec.gov/CIK 0000732712', 'http://www.sec.gov/CIK 0000732717', 'http://www.sec.gov/CIK 0000789019', 'http://www.sec.gov/CIK 0000858877', 'http://www.sec.gov/CIK 0000886982', 'http://www.sec.gov/CIK 0001001039', 'http://www.sec.gov/CIK 0000012927', 'http://www.sec.gov/CIK 0000018230', 'http://www.sec.gov/CIK 0000021344', 'http://www.sec.gov/CIK 0000050863', 'http://www.sec.gov/CIK 0000051143', 'http://www.sec.gov/CIK 0000063908', 'http://www.sec.gov/CIK 0000086312', 'http://www.sec.gov/CIK 0000104169', 'http://www.sec.gov/CIK 0000200406', 'http://www.sec.gov/CIK 0000731766' ]
                            }
                        },
                        'xbrl:Unit': {
                            'Name': 'xbrl:Unit',
                            'Label': 'Unit',
                            'Kind': 'TypedDimension',
                            'Type': 'string',
                            'Default': 'xbrl28:NoUnit'
                        },
                        'sec:Accepted': {
                            'Name': 'sec:Accepted',
                            'Label': 'Acceptance Date [Axis]',
                            'Kind' : 'TypedDimension',
                            'Type' : 'string'
                        },
                        'xbrl28:Archive': {
                            'Name': 'xbrl28:Archive',
                            'Label': 'Archive [Axis]',
                            'Kind' : 'TypedDimension',
                            'Type' : 'string'
                        },
                        'sec:FiscalYear': {
                            'Name': 'sec:FiscalYear',
                            'Label': 'Fiscal Year [Axis]',
                            'Kind' : 'TypedDimension',
                            'Type' : 'integer',
                            'DomainRestriction' : {
                                'Name' : 'sec:FiscalYearDomain',
                                'Label' : 'Fiscal Year [Domain]',
                                'Enumeration' : [ defaultFiscalYear ]
                            }
                        },
                        'sec:FiscalPeriod': {
                            'Name': 'sec:FiscalPeriod',
                            'Label': 'Fiscal Period [Axis]',
                            'Kind' : 'TypedDimension',
                            'Type' : 'string',
                            'DomainRestriction' : {
                                'Name' : 'sec:FiscalPeriodDomain',
                                'Label' : 'Fiscal Period [Domain]',
                                'Enumeration' : [ 'FY' ]
                            }
                        },
                        'sec:FiscalPeriodType': {
                            'Name': 'sec:FiscalPeriodType',
                            'Label': 'Fiscal Period Type [Axis]',
                            'Kind': 'TypedDimension',
                            'Type': 'string',
                            'DomainRestriction': {
                                'Name': 'sec:FiscalPeriodTypeDomain',
                                'Label': 'Fiscal Period Type [Domain]',
                                'Enumeration': [ 'instant', 'YTD' ]
                            }
                        },
                        'dei:LegalEntityAxis': {
                            'Name': 'dei:LegalEntityAxis',
                            'Label': 'Legal Entity [Axis]',
                            'Default': 'sec:DefaultLegalEntity',
                            'Members' : [
                                {
                                    'Name': 'dei:LegalEntityAxisDomain',
                                    'Label': 'Legal Entity [Domain]',
                                    'Members': [
                                        {
                                            'Name': 'sec:DefaultLegalEntity',
                                            'Label': 'Default Legal Entity'
                                        }
                                    ]
                                }
                            ]
                        }
                    }
                }
            },
            'Concepts': [
                {
                    'Name': 'xbrl28:Archive',
                    'Label': 'Archive [Axis]',
                    'IsNillable': true,
                    'IsAbstract': true,
                    'PeriodType': 'duration',
                    'SubstitutionGroup': 'xbrldt:dimensionItem',
                    'DataType': 'nonnum:domainItemType',
                    'BaseType': 'string',
                    'ClosestSchemaBuiltinType': 'xs:string',
                    'IsTextBlock': false,
                    'Labels': [
                        {
                            'Role': 'http://www.xbrl.org/2003/role/label',
                            'Language': 'en-us',
                            'Value': 'Archive [Axis]'
                        }
                    ]
                },
                {
                    'Name': 'sec:Accepted',
                    'Label': 'SEC Acceptance Date [Axis]',
                    'IsNillable': true,
                    'IsAbstract': true,
                    'PeriodType': 'duration',
                    'SubstitutionGroup': 'xbrldt:dimensionItem',
                    'DataType': 'nonnum:domainItemType',
                    'BaseType': 'string',
                    'ClosestSchemaBuiltinType': 'xs:string',
                    'IsTextBlock': false,
                    'Labels': [
                        {
                            'Role': 'http://www.xbrl.org/2003/role/label',
                            'Language': 'en-us',
                            'Value': 'SEC Acceptance Date [Axis]'
                        }
                    ]
                },
                {
                    'Name': 'xbrl28:ImpliedTable',
                    'Label': 'Implied Table [Table]',
                    'IsNillable': true,
                    'IsAbstract': true,
                    'PeriodType': 'duration',
                    'SubstitutionGroup': 'xbrldt:hypercubeItem',
                    'DataType': 'xbrli:stringItemType',
                    'BaseType': 'string',
                    'ClosestSchemaBuiltinType': 'xs:string',
                    'IsTextBlock': false,
                    'Labels': [
                        {
                            'Role': 'http://www.xbrl.org/2003/role/label',
                            'Language': 'en-us',
                            'Value': 'Implied Table [Table]'
                        }
                    ]
                },
                {
                    'Name': 'xbrl:Unit',
                    'Label': 'Unit [Axis]',
                    'IsNillable': true,
                    'IsAbstract': true,
                    'PeriodType': 'duration',
                    'SubstitutionGroup': 'xbrldt:dimensionItem',
                    'DataType': 'nonnum:domainItemType',
                    'BaseType': 'string',
                    'ClosestSchemaBuiltinType': 'xs:string',
                    'IsTextBlock': false,
                    'Labels': [
                        {
                            'Role': 'http://www.xbrl.org/2003/role/label',
                            'Language': 'en-us',
                            'Value': 'Unit [Axis]'
                        }
                    ]
                },
                {
                    'Name': 'xbrl:Concept',
                    'Label': 'Concept [Axis]',
                    'IsNillable': true,
                    'IsAbstract': true,
                    'PeriodType': 'duration',
                    'SubstitutionGroup': 'xbrldt:dimensionItem',
                    'DataType': 'nonnum:domainItemType',
                    'BaseType': 'string',
                    'ClosestSchemaBuiltinType': 'xs:string',
                    'IsTextBlock': false,
                    'Labels': [
                        {
                            'Role': 'http://www.xbrl.org/2003/role/label',
                            'Language': 'en-us',
                            'Value': 'Concept [Axis]'
                        }
                    ]
                },
                {
                    'Name': 'xbrl:Period',
                    'Label': 'Period [Axis]',
                    'IsNillable': true,
                    'IsAbstract': true,
                    'PeriodType': 'duration',
                    'SubstitutionGroup': 'xbrldt:dimensionItem',
                    'DataType': 'nonnum:domainItemType',
                    'BaseType': 'string',
                    'ClosestSchemaBuiltinType': 'xs:string',
                    'IsTextBlock': false,
                    'Labels': [
                        {
                            'Role': 'http://www.xbrl.org/2003/role/label',
                            'Language': 'en-us',
                            'Value': 'Period [Axis]'
                        }
                    ]
                },{
                    'Name': 'sec:FiscalYear',
                    'Label': 'Fiscal Year [Axis]',
                    'IsNillable': true,
                    'IsAbstract': true,
                    'PeriodType': 'duration',
                    'SubstitutionGroup': 'xbrldt:dimensionItem',
                    'DataType': 'nonnum:domainItemType',
                    'BaseType': 'string',
                    'ClosestSchemaBuiltinType': 'xs:string',
                    'IsTextBlock': false,
                    'Labels': [
                        {
                            'Role': 'http://www.xbrl.org/2003/role/label',
                            'Language': 'en-us',
                            'Value': 'Fiscal Year [Axis]'
                        }
                    ]
                },
                {
                    'Name': 'sec:FiscalPeriodType',
                    'Label': 'Fiscal Period Type [Axis]',
                    'IsNillable': true,
                    'IsAbstract': true,
                    'PeriodType': 'duration',
                    'SubstitutionGroup': 'xbrldt:dimensionItem',
                    'DataType': 'nonnum:domainItemType',
                    'BaseType': 'string',
                    'ClosestSchemaBuiltinType': 'xs:string',
                    'IsTextBlock': false,
                    'Labels': [
                        {
                            'Role': 'http://www.xbrl.org/2003/role/label',
                            'Language': 'en-us',
                            'Value': 'Fiscal Period Type [Axis]'
                        }
                    ]
                },
                {
                    'Name': 'xbrl:Entity',
                    'Label': 'Reporting Entity [Axis]',
                    'IsNillable': true,
                    'IsAbstract': true,
                    'PeriodType': 'duration',
                    'SubstitutionGroup': 'xbrldt:dimensionItem',
                    'DataType': 'nonnum:domainItemType',
                    'BaseType': 'string',
                    'ClosestSchemaBuiltinType': 'xs:string',
                    'IsTextBlock': false,
                    'Labels': [
                        {
                            'Role': 'http://www.xbrl.org/2003/role/label',
                            'Language': 'en-us',
                            'Value': 'Reporting Entity [Axis]'
                        }
                    ]
                },{
                    'Name': 'sec:FiscalPeriod',
                    'Label': 'Fiscal Period [Axis]',
                    'IsNillable': true,
                    'IsAbstract': true,
                    'PeriodType': 'duration',
                    'SubstitutionGroup': 'xbrldt:dimensionItem',
                    'DataType': 'nonnum:domainItemType',
                    'BaseType': 'string',
                    'ClosestSchemaBuiltinType': 'xs:string',
                    'IsTextBlock': false,
                    'Labels': [
                        {
                            'Role': 'http://www.xbrl.org/2003/role/label',
                            'Language': 'en-us',
                            'Value': 'Fiscal Period [Axis]'
                        }
                    ]
                }
            ],
            'Rules' : [],
            'Filters' : {
                'cik' : [  ],
                'tag' : [ 'DOW30' ],
                'fiscalYear' : [ defaultFiscalYear ],
                'fiscalPeriod' : [ 'FY' ],
                'fiscalPeriodType' : [ 'instant', 'YTD' ],
                'sic' : [  ]
            }
        };
    };

    SECReport.prototype.hasSufficientFilters = function(){
        var result = false;
        var countEntityRestrictions = this.countAspectsRestrictions(['xbrl:Entity']);
        var countYearsRestrictions = this.countAspectsRestrictions(['sec:FiscalYear']);
        var countPeriodRestrictions = this.countAspectsRestrictions(['sec:FiscalPeriod']);
        if(countEntityRestrictions > 0 && countEntityRestrictions < 501){
            result = true;
        }
        if(result && countYearsRestrictions < 10){
            result = true;
        }
        if(result && countPeriodRestrictions < 10){
            result = true;
        }
        return result;
    };

    SECReport.prototype.newDefinitionModel = function(label, role, source) {
        return [ {
            'ModelKind' : 'DefinitionModel',
            'Labels' : [ label ],
            'Parameters' : {

            },
            'Breakdowns' : {
                'x' : [ {
                    'BreakdownLabels' : [ 'Reporting Entity Breakdown' ],
                    'BreakdownTrees' : [ {
                        'Kind' : 'Rule',
                        'Abstract' : true,
                        'Labels' : [ 'Reporting Entity [Axis]' ],
                        'Children' : [ {
                            'Kind' : 'Aspect',
                            'Aspect' : 'xbrl:Entity'
                        } ]
                    } ]
                }, {
                    'BreakdownLabels' : [ 'Fiscal Year Breakdown' ],
                    'BreakdownTrees' : [ {
                        'Kind' : 'Rule',
                        'Abstract' : true,
                        'Labels' : [ 'Fiscal Year [Axis]' ],
                        'Children' : [ {
                            'Kind' : 'Aspect',
                            'Aspect' : 'sec:FiscalYear'
                        } ]
                    } ]
                }, {
                    'BreakdownLabels' : [ 'Fiscal Period Breakdown' ],
                    'BreakdownTrees' : [ {
                        'Kind' : 'Rule',
                        'Abstract' : true,
                        'Labels' : [ 'Fiscal Period [Axis]' ],
                        'Children' : [ {
                            'Kind' : 'Aspect',
                            'Aspect' : 'sec:FiscalPeriod'
                        } ]
                    } ]
                } ],
                'y' : [ {
                    'BreakdownLabels' : [ 'Breakdown on concepts' ],
                    'BreakdownTrees' : [ {
                        'Kind' : 'ConceptRelationship',
                        'LinkName' : 'link:presentationLink',
                        'LinkRole' : role,
                        'ArcName' : 'link:presentationArc',
                        'ArcRole' : 'http://www.xbrl.org/2003/arcrole/parent-child',
                        'RelationshipSource' : source,
                        'FormulaAxis' : 'descendant',
                        'Generations' : 0
                    } ]
                } ]
            },
            'TableFilters' : {

            }
        } ];
    };

    return SECReport;
});

