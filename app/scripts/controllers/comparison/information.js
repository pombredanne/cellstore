'use strict';

/*globals accounting*/

angular.module('main')
.controller('ComparisonInformationCtrl', function($scope, $state, $http, $backend) {
    $scope.showtab = [];
    $scope.reports = [];
    
    $scope.filings = null;
    $scope.error = false;
    $scope.errornoresults = false;
    $scope.errormany = false;

    $backend.Queries.listFilings({
        $method: 'POST',
        cik: $scope.selection.cik,
        tag: $scope.selection.tag,
        fiscalYear: $scope.selection.fiscalYear,
        fiscalPeriod: $scope.selection.fiscalPeriod,
        sic: $scope.selection.sic,
        token: $scope.token
    })
        .then(function(data) {
            $scope.filings = [];
            data.Archives.forEach(function(a) { $scope.filings.push(a.AccessionNumber); });
            if ($scope.filings.length === 0) {
                $scope.reports = [];
                $scope.errornoresults = true;
            }
            else {
                if ($scope.filings.length > 30 && !$scope.nomany) {
                    $scope.reports = [];
                    $scope.errormany = true;
                } else {
                    $scope.getInfo();
                }
            }
        },
        function(response) {
            $scope.$emit('error', response.status, response.data);
        });

    $scope.getInfo = function() {
        
        $scope.reports = [];
        $scope.params = {
                _method: 'POST',
                aid: $scope.filings,
                report: 'FundamentalAccountingConcepts',
                'token' : $scope.token
            };
        $http({
            method: 'GET',
            url: $backend.API_URL + '/_queries/public/FactsForReportSchema.jq',
            params: $scope.params,
            cache: false
        })
        .success($scope.prepareReportForUI)
        .error(function (data, status) {
                if (status === 401) {
                    $scope.error = true;
                } else {
                    $scope.$emit('error', status, data);
                }
            }
        );
    };

    $scope.prepareReportForUI = function(data) {
        var reports = [];

        data.sort(function(a, b){
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
                            array[j] = item;
                        } else {
                            item = array[j];
                        }
                        if (list[key].Facts && list[key].Facts.length > 0) {
                            item.type[index] = list[key].Facts[0].Type;
                            if (list[key].Facts[0].Type === 'NumericValue') {
                                var num = list[key].Facts[0].Value;
                                if (!num) { num = '0'; }
                                item.value[index] = accounting.formatNumber(num, decimals);
                            } else {
                                item.value[index] = list[key].Facts[0].Value;
                            }
                        } else {
                            if (isNumeric)
                            {
                                item.value[index] = 0;
                                item.type[index] = 'NumericValue';
                            }
                            else {
                                item.value[index] = null;
                                item.type[index] = '';
                            }
                        }
                        j++;
                    } // if
                } // for
            };

        for (var i = 0; i < data.length; i++)
        {
            var root = data[i].Trees['fac:FundamentalAccountingConceptsLineItems']
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
                        reports[k] = obj;
                    }
                    prepareReport(
                        root[report].To,
                        reports[k].items,
                        i,
                        reports[k].isNumeric,
                        reports[k].decimals || 0);
                    k++;
                }
            }//for
        }//for
        $scope.error = false;
        $scope.errormany = false;
        $scope.errornoresults = (reports.length === 0);
        $scope.reports = reports;
        for (var j = 0; j < reports.length; j++)
        {
            $scope.showtab.push(true);
        }
    };

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
