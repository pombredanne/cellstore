angular.module('main').controller('InformationCtrl', ['$scope', '$rootScope', '$anchorScroll', '$location', '$route', '$http', '$backend', 'QueriesService', 'years', 'periods', 'entities',
  function($scope, $rootScope, $anchorScroll, $location, $route, $http, $backend, QueriesService, years, periods, entities) {
    $scope.service = (new QueriesService($backend.API_URL + '/_queries/public/api'));
    $scope.year = ($route.current.params.year ? parseInt($route.current.params.year) : null);
    $scope.period = ($route.current.params.period ? $route.current.params.period : null);
    $scope.cik = ($route.current.params.cik ? $route.current.params.cik : null);
    $scope.reports = [];
    $scope.showtab = [];
    $scope.years = years;
	$scope.periods = periods;
    $scope.entities = entities;

	$scope.computeUsage = function() { 
		$scope.usage = [];
		years.forEach(function(year) {
			$scope.usage.push({ used: false, periods: [ { used: false }, { used: false }, { used: false }, { used: false } ] });
		});

		$http({
			method: 'GET', 
			url: $backend.API_URL + '/_queries/public/FYandFPByCIK.jq',
			params: { _method: 'POST', cik: $scope.cik, "token" : $scope.token },
			cache: true
		})
		.success(function (data, status, headers, config)
		{
			if (data && data.filings)
			{
				data.filings.forEach(function(filing) {
					$scope.usage[$scope.years.indexOf(filing.fiscalYear)].used = true;
					$scope.usage[$scope.years.indexOf(filing.fiscalYear)].periods[$scope.periods.indexOf(filing.fiscalPeriod == "Q4" ? "FY" : filing.fiscalPeriod)].used = true;
				});
				$scope.adjustYearPeriod();
			}
			else $scope.$emit("error", status, data);
		})
		.error(function(data, status) { 
			$scope.$emit("error", status, data);
		});
	};

	$scope.adjustYearPeriod = function() {		
		if ($scope.year && !$scope.usage[$scope.years.indexOf($scope.year)].used) 
			$scope.year = null;
		
		if (!$scope.year)
			for (var i = 0; i < $scope.years.length; i++)
				if ($scope.usage[i].used)
				{
					$scope.year = $scope.years[i];
					$scope.period = $scope.periods[0];
					break;
				}

		if ($scope.period && !$scope.usage[$scope.years.indexOf($scope.year)].periods[$scope.periods.indexOf($scope.period)].used) 
			$scope.period = null;
		
		if (!$scope.period)
		{
			var pers = $scope.usage[$scope.years.indexOf($scope.year)].periods;
			for (var i = 0; i < pers.length; i++)
				if (pers[i].used) {
					$scope.period = $scope.periods[i];
					break;
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
		if (used)
		{
			$scope.year = year;
			$scope.adjustYearPeriod();
			$scope.change();
		}
	};

	$scope.setPeriod = function(period, used) {
		if (used)
		{
			$scope.period = period;
			$scope.adjustYearPeriod();
			$scope.change();
		}
	};

    $scope.change = function ()
    {
		if ($scope.year && $scope.period)
			$scope.goto("/information/" + $scope.cik + "/" + $scope.year + "/" + $scope.period);
		else 
		{ 
			$scope.goto("/information/" + $scope.cik);
			$http({
					method: 'GET', 
					url: $backend.API_URL + '/_queries/public/LatestFYandFPByCIK.jq',
					params: { _method: 'POST', cik: $scope.cik, "token" : $scope.token },
					cache: true
				})
				.success(function (data, status, headers, config)
				{
					if (data && data.latestFYPeriod)
					{
						$scope.year = data.latestFYPeriod.fiscalYear;
						$scope.period = data.latestFYPeriod.fiscalPeriod;
						$scope.goto("/information/" + $scope.cik + "/" + $scope.year + "/" + $scope.period);
					}
					else
						$scope.$emit("error", status, data);
				})
				.error(function (data, status, headers, config)
				{
					$scope.$emit("error", status, data);
				});
		};
    };

    $scope.getComponent = function ()
    {
        $scope.reports = [];
        if (!$scope.cik || !$scope.year || !$scope.period) return;
        $http({
                method: 'GET', 
                url: $backend.API_URL + '/_queries/public/FactsForReportSchema.jq',
                params: { _method: 'POST', cik: $scope.cik, fiscalYearFocus: $scope.year, fiscalPeriodFocus: $scope.period, reportSchema: 'FundamentalAccountingConcepts', "token" : $scope.token },
				cache: true
            })
            .success(function (data, status, headers, config)
            {
                var root = data[0]["Trees"]["fac:FundamentalAccountingConceptsLineItems"]["To"]["fac:FundamentalAccountingConceptsHierarchy"]["To"];
                
                var prepareReport = function(list, array) {
                    for (var key in list) {
                        if (list.hasOwnProperty(key)) {
                            var item = {};
                            item.label = list[key]["Label"] ? list[key]["Label"] : "";
                            if (list[key]["Facts"] && list[key]["Facts"].length > 0) 
                            {
                                item.type = list[key]["Facts"][0]["Type"];
                                if (list[key]["Facts"][0]["Type"] == "NumericValue") {
                                    var num = list[key]["Facts"][0]["Value"];
                                    if (!num) num = "0";
                                    item.value = parseFloat(num).toLocaleString();
                                }
                                else
                                    item.value = list[key]["Facts"][0]["Value"];

								item.auditLabel = "";
								item.auditValue = "";
								if (list[key]["Facts"][0]["AuditTrails"] && list[key]["Facts"][0]["AuditTrails"].length > 0)
								{
									switch(list[key]["Facts"][0]["AuditTrails"][0]["Type"]) {
										case 'concept-maps:concept-maps':
											item.auditLabel = list[key]["Facts"][0]["AuditTrails"][0]["Label"];
											item.auditValue = list[key]["Facts"][0]["AuditTrails"][0]["Data"]["OriginalConcept"];
											break;

										case 'hypercubes:dimension-default':
											item.auditLabel = list[key]["Facts"][0]["AuditTrails"][0]["Label"];
											item.auditValue = list[key]["Facts"][0]["AuditTrails"][0]["Data"]["Dimension"];
											break;
									}
								}
                            }
                            else {
                                item.value = "";
                                item.type = "";
								item.auditLabel = "";
								item.auditValue = "";
                            }
                            array.push(item);
                        }
                    }
                };
                
                for (var report in root) {
                    if (root.hasOwnProperty(report) && report != "fac:KeyRatiosHierarchy") {
                        var obj = { name: root[report]["Label"].toString().replace(" [Hierarchy]", ""), items: [] };
                        prepareReport(root[report]["To"], obj.items);
                        $scope.reports.push(obj);
                        $scope.showtab.push(true);
                    }
                };
                $scope.safeApply();
            }
        )
        .error(function (data, status, headers, config)
        {
			$scope.$emit("error", status, data);
        });
    };

    $scope.loadPopover = function() {
        $scope.showPopover = true;
        $scope.result = null;
        $scope.service.listEntities({ $method: 'POST', cik: $scope.cik, token: $scope.token })
            .then(
                function(data) {
                    $scope.result = data.Entities[0];
                    $scope.safeApply();
                },
                function(response) {
                    $scope.$emit("error", response.status, response.data);
                });
    };

    $scope.closePopover = function() { 
        $scope.showPopover = false;
        $scope.result = null;
    };


    if ($route.current.params.cik)
        $scope.entities.forEach(function(entity) {
            if (entity.cik == $route.current.params.cik){
				if ($scope.year && $scope.period)
				{
					$scope.cik = entity.cik;
					$scope.name = entity.name;
					$scope.ticker = entity.tickers[0];
					$scope.computeUsage();
				}
				else { 
					$scope.year = null; 
					$scope.period = null;
					$scope.change();
				}
			}
        });

    $scope.getComponent();
  }
]);
