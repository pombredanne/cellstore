'use strict';

angular.module('main')
.controller('InformationCtrl', function($scope, $rootScope, $anchorScroll, $state, $stateParams, $http, $modal, $filter, $backend, years, periods) {
    $scope.year = $stateParams.year ? $stateParams.year : null;
    $scope.period = $stateParams.period ? $stateParams.period : null;
    $scope.cik = $stateParams.cik ? $stateParams.cik : null;
    $scope.reports = [];
    $scope.showtab = [];
    $scope.years = years;
	$scope.periods = periods;

	$scope.computeUsage = function() {
		$scope.usage = [];
		years.forEach(function() {
			$scope.usage.push({ used: false, periods: [ { used: false }, { used: false }, { used: false }, { used: false } ] });
		});

		$http({
			method: 'GET',
			url: $backend.API_URL + '/_queries/public/FYandFPByCIK.jq',
			params: { _method: 'POST', cik: $scope.cik, 'token' : $scope.token },
			cache: true
		})
		.success(function (data) {
			if (data && data.filings) {
				data.filings.forEach(function(filing) {
					$scope.usage[$scope.years.indexOf('' + filing.fiscalYear)].used = true;
					$scope.usage[$scope.years.indexOf('' + filing.fiscalYear)].periods[$scope.periods.indexOf(filing.fiscalPeriod === 'Q4' ? 'FY' : filing.fiscalPeriod)].used = true;
				});
				$scope.adjustYearPeriod();
			} else {
                $scope.$emit('error', status, data);
            }
		})
		.error(function(data, status) {
			$scope.$emit('error', status, data);
		});
	};

	$scope.adjustYearPeriod = function() {
        var i;
		if ($scope.year && !$scope.usage[$scope.years.indexOf($scope.year)].used) {
            $scope.year = null;
        }
		if (!$scope.year) {
			for (i = 0; i < $scope.years.length; i++) {
				if ($scope.usage[i].used) {
					$scope.year = $scope.years[i];
					$scope.period = $scope.periods[0];
					break;
				}
            }
        }
		if ($scope.period && !$scope.usage[$scope.years.indexOf($scope.year)].periods[$scope.periods.indexOf($scope.period)].used) {
            $scope.period = null;
        }
		
		if (!$scope.period) {
			var pers = $scope.usage[$scope.years.indexOf($scope.year)].periods;
			for (i = 0; i < pers.length; i++) {
				if (pers[i].used) {
					$scope.period = $scope.periods[i];
					break;
				}
            }
		}
	};

	$scope.setYear = function(year, used) {
		if (used) {
            $scope.year = year;
			$scope.adjustYearPeriod();
			$scope.change();
		}
	};

	$scope.setPeriod = function(period, used) {
		if (used) {
			$scope.period = period;
			$scope.adjustYearPeriod();
			$scope.change();
		}
	};

    $scope.change = function () {
		if ($scope.year && $scope.period) {
		    $state.go('root.entity.information', { cik: $scope.cik, year: $scope.year, period: $scope.period });
        } else {
            $state.go('root.entity.information', { cik: $scope.cik });
			$http({
                method: 'GET',
				url: $backend.API_URL + '/_queries/public/LatestFYandFPByCIK.jq',
				params: { _method: 'POST', cik: $scope.cik, 'token' : $scope.token },
				cache: true
            })
            .success(function (data, status) {
                if (data && data.latestFYPeriod) {
                    $scope.year = '' + data.latestFYPeriod.fiscalYear;
				    $scope.period = data.latestFYPeriod.fiscalPeriod;
		            $state.go('root.entity.information', { cik: $scope.cik, year: $scope.year, period: $scope.period });
				} else {
				    $scope.$emit('error', status, data);
                }
            })
            .error(function (data, status) {
                $scope.$emit('error', status, data);
            });
		}
    };

    $scope.getComponent = function () {
        $scope.reports = [];
        if (!$scope.filings || $scope.filings.length === 0) {
            return;
        }

        $http({
            method: 'GET',
            url: $backend.API_URL + '/_queries/public/FactsForReportSchema.jq',
            params: { _method: 'POST', aid: $scope.filings, report: 'FundamentalAccountingConcepts', 'token' : $scope.token },
            cache: true
        })
        .success(function (data) {
            var root = data[0].Trees['fac:FundamentalAccountingConceptsLineItems'].To['fac:FundamentalAccountingConceptsHierarchy'].To;
            var prepareReport = function(list, array, isNumeric, decimals) {
                for (var key in list) {
                    if (list.hasOwnProperty(key) &&
                        report !== 'fac:ValidationStatistics') {
                        var item = {};
                        item.label = list[key].Label ? list[key].Label : '';
                        if (list[key].Facts && list[key].Facts.length > 0) {
                            item.type = list[key].Facts[0].Type;
                            if(list[key].Facts[0].Type === 'NumericValue') {
                                var num = list[key].Facts[0].Value;
                                item.value = $filter('number')(num || 0, decimals);
                            } else {
                                item.value = list[key].Facts[0].Value;
                            }
                            item.auditLabel = '';
                            item.auditValue = '';
                            if (list[key].Facts[0].AuditTrails && list[key].Facts[0].AuditTrails.length > 0) {
                                var indexCM = null;
                                var indexF = null;
                                var indexV = null;
                                var indexD = null;

                                for (var i = 0; i < list[key].Facts[0].AuditTrails.length ; i++)
                                {
                                    switch(list[key].Facts[0].AuditTrails[i].Type) {
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
                                    }
                                }
                                var auditItem = list[key].Facts[0].AuditTrails[(indexCM || indexF || indexV || indexD) - 1];

                                item.auditId = auditItem.Id;
                                switch(auditItem.Type) {
                                case 'xbrl28:concept-maps':
                                    item.auditLabel = auditItem.Label;
                                    item.auditValue = auditItem.Data.OriginalConcept;
                                    break;
                                case 'xbrl28:dimension-default':
                                    item.auditLabel = auditItem.Label;
                                    item.auditValue = auditItem.Data.Dimension;
                                    break;
                                case 'xbrl28:formula':
                                    item.auditLabel = auditItem.Label;
                                    item.auditValue = auditItem.Message;
                                    break;
                                case 'xbrl28:validation':
                                    item.auditLabel = auditItem.Label;
                                    item.auditValue = auditItem.Message;
                                    break;
                                }
                            }
                        } else {
                            if (isNumeric) {
                                item.value = null;
                                item.type = 'NumericValue';
                                item.auditLabel = item.label;
                                item.auditValue = list[key].Name + '[0] := 0';
                            } else {
                                item.value = null;
                                item.type = '';
                                item.auditLabel = '';
                                item.auditValue = '';
                            }
                        }
                        array.push(item);
                    }
                }
            };
                
            for (var report in root) {
                if (root.hasOwnProperty(report) &&
                    report !== 'fac:ValidationStatistics') {
                    var obj = {
                        name: root[report].Label.toString().replace(' [Hierarchy]', ''),
                        items: [],
                        isNumeric : (report === 'fac:BalanceSheetHierarchy' || report === 'fac:CashFlowStatementHierarchy' || report === 'fac:IncomeStatementHierarchy' || report === 'fac:StatementComprehensiveIncomeHierarchy' || report === 'fac:KeyRatiosHierarchy'),
                        isBoolean : (report === 'fac:Validations')
                    };
                    if (report === 'fac:BalanceSheetHierarchy' &&
                        root['fac:GeneralInformationHierarchy'] &&
                        root['fac:GeneralInformationHierarchy'].To['fac:BalanceSheetFormat'] &&
                        root['fac:GeneralInformationHierarchy'].To['fac:BalanceSheetFormat'].Facts &&
                        root['fac:GeneralInformationHierarchy'].To['fac:BalanceSheetFormat'].Facts.length > 0)
                    {
                        obj.specifier = root['fac:GeneralInformationHierarchy'].To['fac:BalanceSheetFormat'].Facts[0].Value;
                    }
                    if (report === 'fac:IncomeStatementHierarchy' &&
                        root['fac:GeneralInformationHierarchy'] &&
                        root['fac:GeneralInformationHierarchy'].To['fac:IncomeStatementFormat'] &&
                        root['fac:GeneralInformationHierarchy'].To['fac:IncomeStatementFormat'].Facts &&
                        root['fac:GeneralInformationHierarchy'].To['fac:IncomeStatementFormat'].Facts.length > 0)
                    {
                        obj.specifier = root['fac:GeneralInformationHierarchy'].To['fac:IncomeStatementFormat'].Facts[0].Value;
                    }
                    prepareReport(root[report].To, obj.items, obj.isNumeric, (report === 'fac:KeyRatiosHierarchy' ? 3 : 0));
                    $scope.reports.push(obj);
                    $scope.showtab.push(true);
                }
            }
        })
        .error(function (data, status) {
            $scope.$emit('error', status, data);
        });
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

    if ($scope.cik && $scope.year && $scope.period)
    {
        $scope.computeUsage();
        $backend.Queries.listFilings({
            _method: 'POST',
            cik: $scope.cik,
            fiscalYear: $scope.year,
            fiscalPeriod: $scope.period,
            token: $scope.token
        }).then(function(data) {
            $scope.filings = [];
            data.Archives.forEach(function(a) { $scope.filings.push(a.AccessionNumber); });
            $scope.getComponent();
        },
        function(response) {
            $scope.$emit('error', response.status, response.data);
        });
    } else {
        $scope.year = null;
        $scope.period = null;
        $scope.change();
    }
});
