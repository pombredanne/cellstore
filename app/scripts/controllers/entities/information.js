'use strict';

angular.module('main')
.controller('InformationCtrl', function(
    $scope, $rootScope, $anchorScroll, $state, $stateParams, $http, $modal,
    $backend, QueriesService, years, periods, entities
) {
    $scope.service = (new QueriesService($backend.API_URL + '/_queries/public/api'));
    $scope.year = $stateParams.year ? parseInt($stateParams.year, 10) : null;
    $scope.period = $stateParams.period ? $stateParams.period : null;
    $scope.cik = $stateParams.cik ? $stateParams.cik : null;
    $scope.reports = [];
    $scope.showtab = [];
    $scope.years = years;
	$scope.periods = periods;
    $scope.entities = entities;

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
					$scope.usage[$scope.years.indexOf(filing.fiscalYear)].used = true;
					$scope.usage[$scope.years.indexOf(filing.fiscalYear)].periods[$scope.periods.indexOf(filing.fiscalPeriod === 'Q4' ? 'FY' : filing.fiscalPeriod)].used = true;
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

    $scope.selectEntity = function(item) {
        $scope.cik = item.cik;
        $scope.name = item.name;
        $scope.ticker = item.tickers[0];
		$scope.year = null;
		$scope.period = null;
        $scope.change();
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
		    $state.go('root.entity.information', { cik: $scope.cik, year: $scope.year, period: $scope });
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
                    $scope.year = data.latestFYPeriod.fiscalYear;
				    $scope.period = data.latestFYPeriod.fiscalPeriod;
		            $state.go('root.entity.information', { cik: $scope.cik, year: $scope.year, period: $scope });
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
            var prepareReport = function(list, array) {
                for (var key in list) {
                    if (list.hasOwnProperty(key)) {
                        var item = {};
                        item.label = list[key].Label ? list[key].Label : '';
                        if (list[key].Facts && list[key].Facts.length > 0) {
                            item.type = list[key].Facts[0].Type;
                            if(list[key].Facts[0].Type === 'NumericValue') {
                                var num = list[key].Facts[0].Value;
                                if (!num) {
                                    num = '0';
                                }
                                item.value = parseFloat(num).toLocaleString();
                            } else {
                                item.value = list[key].Facts[0].Value;
                            }
                            item.auditLabel = '';
                            item.auditValue = '';
                            if (list[key].Facts[0].AuditTrails && list[key].Facts[0].AuditTrails.length > 0) {
                                switch(list[key].Facts[0].AuditTrails[0].Type) {
                                case 'bizql:concept-maps':
                                    item.auditLabel = list[key].Facts[0].AuditTrails[0].Label;
                                    item.auditValue = list[key].Facts[0].AuditTrails[0].Data.OriginalConcept;
                                    break;
                                case 'hypercubes:dimension-default':
                                    item.auditLabel = list[key].Facts[0].AuditTrails[0].Label;
                                    item.auditValue = list[key].Facts[0].AuditTrails[0].Data.Dimension;
                                    break;
                                }
                            }
                        } else {
                            item.value = '';
                            item.type = '';
                            item.auditLabel = '';
                            item.auditValue = '';
                        }
                        array.push(item);
                    }
                }
            };
                
            for (var report in root) {
                if (root.hasOwnProperty(report) && report !== 'fac:KeyRatiosHierarchy') {
                    var obj = { name: root[report].Label.toString().replace(' [Hierarchy]', ''), items: [] };
                    prepareReport(root[report].To, obj.items);
                    $scope.reports.push(obj);
                    $scope.showtab.push(true);
                }
            }
        })
        .error(function (data, status) {
            $scope.$emit('error', status, data);
        });
    };
        
    $scope.openEntityDetails = function(){
        $modal.open({
            templateUrl: '/views/entity_details.html',
            controller: 'EntityDetailsCtrl',
            resolve: {
                name: function(){ return $scope.name; },
                cik: function(){ return $scope.cik; },
                ticker: function(){ return $scope.ticker; },
                result: function () {
                    return $scope.service.listEntities({ $method: 'POST', cik: $scope.cik, token: $scope.token });
                }
            }
        });
    };


        $scope.entities.forEach(function(entity) {
            if (entity.cik === $stateParams.cik) {
				if ($scope.year && $scope.period) {
					$scope.cik = entity.cik;
					$scope.name = entity.name;
					$scope.ticker = entity.tickers[0];
					$scope.computeUsage();
				} else {
					$scope.year = null;
					$scope.period = null;
					$scope.change();
				}
			}
        });

    if ($scope.cik && $scope.year && $scope.period)
    {
        $scope.service.listFilings({
            $method: 'POST',
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
    }
});
