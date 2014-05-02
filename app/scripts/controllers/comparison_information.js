'use strict';

/*globals accounting*/

angular.module('main')
.controller('ComparisonInformationCtrl', function($scope, $http, $location, $state, $backend, QueriesService) {
    $scope.service = (new QueriesService($backend.API_URL + '/_queries/public/api'));
    $scope.selection = {};
    $scope.showtab = [];
    $scope.reports = [];
    $scope.filings = null;
    $scope.error = false;
    $scope.errormany = false;
    
    $scope.$on('filterChanged', function(event, selection) {
        $scope.selection = angular.copy(selection);
        if (!selection) { return; }
        
        $location.search($scope.selection);
        
        $scope.filings = null;
        $scope.error = false;
        $scope.errormany = false;

        $scope.service.listFilings({
            $method: 'POST',
            cik: selection.cik,
            tag: selection.tag,
            fiscalYear: selection.fiscalYear,
            fiscalPeriod: selection.fiscalPeriod,
            token: $scope.token
        }).then(function(data) {
            $scope.filings = [];
            data.Archives.forEach(function(a) { $scope.filings.push(a.AccessionNumber); });
            if ($scope.filings.length > 30 && !$scope.nomany) {
                $scope.reports = [];
                $scope.errormany = true;
            } else {
                $scope.getInfo();
            }
        },
        function(response) {
            $scope.$emit('error', response.status, response.data);
        });
    });

    $scope.getInfo = function() {
        
        $scope.reports = [];
        $scope.params = {
                _method: 'POST',
                aid: $scope.filings,
                report: 'FundamentalAccountingConcepts',
                'token' : $scope.token
            };
        var promiseResponse = $backend.getFactsForReport($scope.params);
        promiseResponse.then(
            $scope.prepareReportForUI,
            function (data, status) {
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

        var prepareReport =
            function(cik, list, array, index, isNumeric, decimals) {
                var j = 0, item;
                for (var key in list) {
                    if (list.hasOwnProperty(key)) {
                        if (index === 0) {
                            item = {};
                            item.cik = cik;
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
            var cik = root['fac:GeneralInformationHierarchy']
                .To['fac:EntityCentralIndexKey'].Facts[0].Value;
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
                        cik,
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
    
    
    $scope.$on('$stateChangeSuccess', function(event, toState) {
        $scope.subActive = toState.data && toState.data.subActive;
    });
});
