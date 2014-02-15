angular.module('main').controller('SearchCtrl', ['$scope', '$location', '$route', '$http', '$angularCacheFactory', '$backend', 'years', 'periods', 'entities', 'conceptMaps',
  function($scope, $location, $route, $http, $angularCacheFactory, $backend, years, periods, entities, conceptMaps){
    $scope.conceptMaps = conceptMaps;
    $scope.conceptMapKey = conceptMaps[1];
    $scope.conceptMapKeys = [];
    $scope.factValue = '';
    $scope.factText = '';
    $scope.units = '';
    $scope.entities = entities;
	$scope.years = years;
	$scope.periods = periods;
	$scope.searches = $angularCacheFactory.get('secxbrl').get('search-history') || [];

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
					$scope.usage[$scope.years.indexOf(filing.fiscalYear)].periods[$scope.periods.indexOf(filing.fiscalPeriod)].used = true;
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

		if (!$scope.usage[$scope.years.indexOf($scope.year)].periods[$scope.periods.indexOf($scope.period)].used) {
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
        $scope.factType = '';
        $scope.factValue = '';
        $scope.factText = '';
        $scope.factUnit = '';
		$scope.originalConcept = null;
		$scope.computeUsage();
	};

	$scope.setYear = function(year, used) {
		if (used)
		{
			$scope.year = year;
			$scope.adjustYearPeriod();
			$scope.factType = '';
			$scope.factValue = '';
			$scope.factText = '';
			$scope.factUnit = '';
			$scope.originalConcept = null;
		}
	};

	$scope.setPeriod = function(period, used) {
		if (used)
		{
			$scope.period = period;
			$scope.factType = '';
			$scope.factValue = '';
			$scope.factText = '';
			$scope.factUnit = '';
			$scope.originalConcept = null;
		}
	};
	
	$scope.trimURL = function(url) {
		if (url.length < 40) return url;

		return url.substr(0, 10) + "..." + url.substr(url.length - 30);
	};

    $scope.getValue = function ()
    {
        $scope.factType = '';
        $scope.factValue = '';
        $scope.factText = '';
        $scope.factUnit = '';
		$scope.originalConcept = null;
        if ($scope.cik && $scope.period && $scope.year && $scope.conceptMapKey != '')
        {
            $http({
                    method: 'GET', 
                    url: $backend.API_URL + '/_queries/public/FactForConcept.jq',
                    params: { _method: 'POST', cik: $scope.cik, fiscalYearFocus: $scope.year, fiscalPeriodFocus: $scope.period, conceptName: $scope.conceptMapKey, map: $scope.conceptMap || "None", "token" : $scope.token },
					cache: true
                })
                .success(function (data, status, headers, config)
                {
					if (data.originalConcept)
						$scope.originalConcept = data.originalConcept;
                    if (data.value) 
					{
                        if(data.type == "NumericValue")
                        {
							$scope.factType = data.type;
                            $scope.factValue = parseFloat(data.value).toLocaleString();
                            $scope.factUnit = data.unit.split(':')[1];
                        }
                        else 
						{
							$scope.factText = data.value; 
						}

						$scope.searches.unshift({ 
							cik: $scope.cik, name: $scope.name, 
							year: $scope.year, period: $scope.period,
							conceptMap: $scope.conceptMap,
							conceptMapKey: $scope.conceptMapKey, 
							factType: $scope.factType, 
							factValue: $scope.factValue, 
							factUnit: $scope.factUnit, 
							factText: $scope.factText });
						if ($scope.searches.length > 15) $scope.searches.pop();
						$angularCacheFactory.get('secxbrl').put('search-history', angular.copy($scope.searches));
						$scope.safeApply();
					}
                })
				.error(function(data, status) { 
					$scope.$emit("error", status, data);
				});
        }
        else
            $scope.$emit('alert', 'Error', 'Please fill in all parameters!');

    }

    $scope.$watch(
        function(scope) {
            return scope.conceptMap + "|" + scope.cik + "|" + scope.year + "|" + scope.period;
        }, 
        function(newValue) {
            $scope.conceptMapKeys = [];

            var crtMapKey = $scope.conceptMapKey;
            $scope.conceptMapKey = "";

            if ($scope.conceptMap)
            {
                $http({
                        method: 'GET', 
                        url: $backend.API_URL + '/_queries/public/ConceptMapKeys.jq',
                        params: { _method: 'POST', mapName: $scope.conceptMap || "None", "token" : $scope.token },
						cache: true
                    })
                    .success(function (data, status, headers, config)
                    {
                        if (data) $scope.conceptMapKeys = data.mapKeys;
                        if ($scope.conceptMapKeys.indexOf(crtMapKey) >= 0) 
                            $scope.conceptMapKey = crtMapKey;
                        $scope.safeApply();
                    })
					.error(function(data, status) { 
						$scope.$emit("error", status, data);
					});
            }
            else
            {
                if ($scope.cik && $scope.year && $scope.period)
                {
                    $http({
                            method: 'GET', 
                            url: $backend.API_URL + '/_queries/public/FactualConcepts.jq',
                            params: { _method: 'POST', cik: $scope.cik, fiscalYearFocus: $scope.year, fiscalPeriodFocus: $scope.period, "token" : $scope.token },
							cache: true
                        })
                        .success(function (data, status, headers, config)
                        {
                            if (data && data.factualConcepts) 
                                data.factualConcepts.forEach(function(item) {
                                    $scope.conceptMapKeys.push(item.name);
                                });
                            if ($scope.conceptMapKeys.indexOf(crtMapKey) >= 0) 
                                $scope.conceptMapKey = crtMapKey;
                            $scope.safeApply();
                        })
						.error(function(data, status) { 
							$scope.$emit("error", status, data);
						});
                }
            }
        }
    );

	$scope.showDetails = function(html) {
		$scope.$emit("alert", "Text Block Details", html);
	};
    
    if ($route.current.params.cik)
        $scope.entities.forEach(function(entity) {
            if (entity.cik == $route.current.params.cik) 
				$scope.selectEntity(entity);
        });
 }
]);
