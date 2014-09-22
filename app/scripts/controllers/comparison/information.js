'use strict';

angular.module('main')
.controller('ComparisonInformationCtrl', function($scope, $state, $filter, $backend, informations) {
    $scope.showtab = [];
    $scope.reports = [];
    $scope.filings = null;
    $scope.errornoresults = false;
    $scope.errormany = false;

    if (informations.data && informations.filings)
    {
        if (informations.filings.length > 30)
        {
            $scope.errormany = true;
        }
        else
        {
            if (informations.data.length === 0)
            {
                $scope.errornoresults = true;
            }
            else
            {
                $scope.filings = informations.filings;
                $scope.params = {
                    _method: 'POST',
                    aid: $scope.filings,
                    report: 'FundamentalAccountingConcepts',
                    'token' : $scope.token
                };
                informations.data.sort(function(a, b){
                    var ai = a.Trees['fac:FundamentalAccountingConceptsLineItems'].To['fac:FundamentalAccountingConceptsHierarchy'].To['fac:GeneralInformationHierarchy'].To;
                    var bi = b.Trees['fac:FundamentalAccountingConceptsLineItems'].To['fac:FundamentalAccountingConceptsHierarchy'].To['fac:GeneralInformationHierarchy'].To;
                    if (ai['fac:EntityCentralIndexKey'].Facts[0].Value < bi['fac:EntityCentralIndexKey'].Facts[0].Value)
                    {
                        return -1;
                    }
                    if (ai['fac:EntityCentralIndexKey'].Facts[0].Value > bi['fac:EntityCentralIndexKey'].Facts[0].Value)
                    {
                        return 1;
                    }
                    if (ai['fac:FiscalYear'].Facts[0].Value < bi['fac:FiscalYear'].Facts[0].Value)
                    {
                        return 1;
                    }
                    if (ai['fac:FiscalYear'].Facts[0].Value > bi['fac:FiscalYear'].Facts[0].Value)
                    {
                        return -1;
                    }
                    if ((ai['fac:FiscalPeriod'].Facts[0].Value === 'FY' ? 'Q4' : ai['fac:FiscalPeriod'].Facts[0].Value) < (bi['fac:FiscalPeriod'].Facts[0].Value === 'FY' ? 'Q4' : bi['fac:FiscalPeriod'].Facts[0].Value))
                    {
                        return 1;
                    }
                    if ((ai['fac:FiscalPeriod'].Facts[0].Value === 'FY' ? 'Q4' : ai['fac:FiscalPeriod'].Facts[0].Value) > (bi['fac:FiscalPeriod'].Facts[0].Value === 'FY' ? 'Q4' : bi['fac:FiscalPeriod'].Facts[0].Value))
                    {
                        return -1;
                    }
                    return 0;
                });

                var prepareReport =
                    function(list, array, index, isNumeric, decimals) {
                        var j = 0, item;
                        for (var key in list) {
                            if (list.hasOwnProperty(key)) {
                                if (index === 0) {
                                    item = {};
                                    item.name = key;
                                    item.label = list[key].Label ? list[key].Label : '';
                                    item.value = [];
                                    item.type = [];
                                    item.audit = [];
                                    array[j] = item;
                                } else {
                                    item = array[j];
                                }
                        
                                item.value[index] = null;
                                item.type[index] = '';
                                item.audit[index] = null;
                        
                                if (list[key].Facts && list[key].Facts.length > 0) {
                                    item.auditId = list[key].Facts[0].AuditTrails[0].Id;
                                    item.type[index] = list[key].Facts[0].Type;
                                    if (list[key].Facts[0].Type === 'NumericValue') {
                                        var num = list[key].Facts[0].Value;
                                        item.value[index] = $filter('number')(num || 0, decimals);
                                    } else {
                                        item.value[index] = list[key].Facts[0].Value;
                                    }
                                    if (list[key].Facts[0].AuditTrails && list[key].Facts[0].AuditTrails.length > 0) {
                                        var indexCM = null;
                                        var indexF = null;
                                        var indexV = null;
                                        var indexD = null;
                                        var indexZ = null;
                                        var fact = list[key].Facts[0];

                                        for (var i = 0; i < fact.AuditTrails.length ; i++)
                                        {
                                            switch(fact.AuditTrails[i].Type) {
                                            case 'xbrl28:concept-maps':
                                                indexCM = i + 1;
                                                break;
                                            case 'xbrl28:dimension-default':
                                                indexD = i + 1;
                                                break;
                                            case 'xbrl28:formula':
                                                indexF = i + 1;
                                                break;
                                            case 'xbrl28:validation':
                                                indexV = i + 1;
                                                break;
                                            case 'xbrl28:default-fact-value':
                                                indexZ = i + 1;
                                                break;
                                            }
                                        }

                                        if((indexCM || indexF || indexV || indexD || indexZ)) {
                                            var auditItem = fact.AuditTrails[(indexCM || indexF || indexV || indexD || indexZ) - 1];

                                            if (auditItem !== undefined) {
                                                switch (auditItem.Type) {
                                                    case 'xbrl28:concept-maps':
                                                        item.audit[index] = auditItem.Data.OriginalConcept;
                                                        break;
                                                    case 'xbrl28:dimension-default':
                                                        item.audit[index] = auditItem.Data.Dimension;
                                                        break;
                                                    case 'xbrl28:formula':
                                                        item.audit[index] = auditItem.Message;
                                                        break;
                                                    case 'xbrl28:validation':
                                                        item.audit[index] = auditItem.Message;
                                                        break;
                                                    case 'xbrl28:default-fact-value':
                                                        item.audit[index] = auditItem.Label + ': ' + auditItem.Message;
                                                        break;
                                                }
                                            }
                                        }
                                    }
                                } else {
                                    if (isNumeric)
                                    {
                                        item.value[index] = 0;
                                        item.type[index] = 'NumericValue';
                                    }
                                }
                                j++;
                            } // if
                        } // for
                    };

                for (var i = 0; i < informations.data.length; i++)
                {
                    var root = informations.data[i].Trees['fac:FundamentalAccountingConceptsLineItems']
                        .To['fac:FundamentalAccountingConceptsHierarchy'].To;
                    var k = 0;
                    for (var report in root) {
                        if (root.hasOwnProperty(report) &&
                            report !== 'fac:KeyRatiosHierarchy' &&
                            report !== 'fac:ValidationStatistics') {
                            if (i === 0) {
                                var obj = {
                                    name: root[report].Label.toString().replace(' [Hierarchy]', ''),
                                    section: report,
                                    items: [],
                                    isNumeric : (
                                        report === 'fac:BalanceSheetHierarchy' ||
                                        report === 'fac:CashFlowStatementHierarchy' ||
                                        report === 'fac:IncomeStatementHierarchy' ||
                                        report === 'fac:StatementComprehensiveIncomeHierarchy' ||
                                        report === 'fac:KeyRatiosHierarchy' ||
                                        report === 'fac:ValidationStatistics'),
                                    isBoolean : (report === 'fac:Validations')
                                };
                                if (report === 'fac:KeyRatiosHierarchy')
                                {
                                    obj.decimals = 3;
                                }
                                $scope.reports[k] = obj;
                            }
                            prepareReport(
                                root[report].To,
                                $scope.reports[k].items,
                                i,
                                $scope.reports[k].isNumeric,
                                $scope.reports[k].decimals || 0);
                            k++;
                        }
                    }//for
                }//for
                for (var j = 0; j < $scope.reports.length; j++)
                {
                    $scope.showtab.push(true);
                }
            }
        }
    }

    $scope.forceShow = function() {
        $scope.nomany=true;
        $scope.getInfo();
    };

    $scope.drill = function(cik, year, period) {
        $state.go('root.entity.information', { cik: cik, year: year, period: period });
    };

    $scope.isBlock = function(string) {
        if (!string) {
            return false;
        }
        return string.length > 60;
    };

    $scope.showText = function(html) {
        $scope.$emit('alert', 'Text Details', html);
    };

    $scope.showAudit = function(passed, message) {
        $scope.$emit('alert', '<small><i class="fa semaphore ' + (passed ? 'fa-check-circle success' : 'fa-exclamation-triangle') + '"></i></small> ' + (passed ? 'Rule passed' : 'Rule failed'), '<samp class="small">' + message + '</samp>');
    };

    $scope.getUrl = function(format) {
        var str = $backend.API_URL + '/_queries/public/api/facttable-for-report.jq';
        var params = angular.copy($scope.params);
        if (format) {
            params.format = format;
        }
        var qs = $scope.wwwFormUrlencoded(params);
        if (qs) {
            str += '?' + qs;
        }
        return str;
    };
});
