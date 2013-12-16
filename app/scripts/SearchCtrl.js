'use strict';

function SearchCtrl($scope, $location, $route, $http, API_URL)
{
    $scope.endyear = 2014;
    $scope.year = ($route.current.params.year ? $route.current.params.year : $scope.endyear - 1);
    $scope.period = ($route.current.params.period ? $route.current.params.period : "FY");
    $scope.conceptMaps = [];
    $scope.conceptMapKeys = [];
    $scope.factValue = '';
    $scope.units = '';

	$scope.selectEntity = function(item) { 
		$scope.cik = item.cik;
		$scope.name = item.name;
		$scope.ticker = item.tickers[0];
		if ($scope.year)
		{
			$scope.change($scope.year, $scope.period);
		}
		else
		{
			$scope.change($scope.endyear - 1, "FY");
		};
	};

    $scope.change = function (year, period)
    {
        $location.path("/search/" + year + "/" + period + ($scope.cik ? "/" + $scope.cik : ""));
        $scope.safeApply();
    };

	$scope.getConceptMaps = function() { 
		$http({
                method: 'POST', 
                url: API_URL + '/_queries/public/ConceptMaps.jq'
            })
            .success(function (data, status, headers, config)
            {
                if (data && data.availableMaps) {
                    $scope.conceptMaps = data.availableMaps;
					$scope.conceptMap = $scope.conceptMaps[0];
				}
                $scope.safeApply();
            });
	};

    $scope.getValue = function ()
    {
		$scope.factValue = '';
		$scope.units = '';
        if ($scope.cik && $scope.period && $scope.year && $scope.conceptMapKey != '')
        {
			if(!$scope.conceptMap) 
			{
				$http({
						method: 'POST', 
						url: API_URL + '/_queries/public/FactForConcept.jq',
						params: { cik: $scope.cik, fiscalYearFocus: $scope.year, fiscalPeriodFocus: $scope.period, conceptName: $scope.conceptKey }
					})
					.success(function (data, status, headers, config)
					{
						$scope.factValue = Number(data.value).toLocaleString();
						$scope.units = data.unit.split(':')[1];
					});
			}
        }
        else
            alert('Complete all parameters!');

    }

	$scope.$watch("entities", function(newValue, oldValue) {
		if (newValue && newValue.length > 0)
		{
			if ($route.current.params.cik)
				newValue.forEach(function(entity) {
					if (entity.cik == $route.current.params.cik) $scope.selectEntity(entity); 
				});
		};
	});

	$scope.$watch("conceptMap", function(newValue, oldValue) {
		$scope.conceptMapKeys = [];
		$scope.conceptMapKey = "";
		if (newValue)
		{
			$http({
					method: 'POST', 
					url: API_URL + '/_queries/public/ConceptMapKeys.jq',
					params: { mapName: newValue || "None" }
				})
				.success(function (data, status, headers, config)
				{
					if (data) $scope.conceptMapKeys = data.mapKeys;
					$scope.safeApply();
				});
		}
		else
		{
			if ($scope.cik && $scope.year && $scope.period)
			{
				$http({
						method: 'POST', 
						url: API_URL + '/_queries/public/FactualConcepts.jq',
						params: { cik: $scope.cik, fiscalYearFocus: $scope.year, fiscalPeriodFocus: $scope.period }
					})
					.success(function (data, status, headers, config)
					{
						if (data && data.factualConcepts) 
							data.factualConcepts.forEach(function(item) {
								$scope.conceptMapKeys.push(item.name);
							});
						$scope.safeApply();
					});
			}
		}
	});

	$scope.getConceptMaps();
}
