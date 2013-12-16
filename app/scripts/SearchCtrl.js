'use strict';

function SearchCtrl($scope, $location, $route, $http, API_URL, LAST_YEAR)
{
    $scope.year = LAST_YEAR - 1;
    $scope.period = "FY";
    $scope.conceptMaps = [];
    $scope.conceptMapKeys = [];
    $scope.factValue = '';
    $scope.units = '';

	$scope.selectEntity = function(item) { 
		$scope.cik = item.cik;
		$scope.name = item.name;
		$scope.ticker = item.tickers[0];
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
			$http({
					method: 'POST', 
					url: API_URL + '/_queries/public/FactForConcept.jq',
					params: { cik: $scope.cik, fiscalYearFocus: $scope.year, fiscalPeriodFocus: $scope.period, conceptName: $scope.conceptKey, map: $scope.conceptMap }
				})
				.success(function (data, status, headers, config)
				{
					$scope.factValue = Number(data.value).toLocaleString();
					$scope.units = data.unit.split(':')[1];
				});
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
						method: 'POST', 
						url: API_URL + '/_queries/public/ConceptMapKeys.jq',
						params: { mapName: $scope.conceptMap || "None" }
					})
					.success(function (data, status, headers, config)
					{
						if (data) $scope.conceptMapKeys = data.mapKeys;
						if ($scope.conceptMapKeys.indexOf(crtMapKey) >= 0) 
							$scope.conceptMapKey = crtMapKey;
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
							if ($scope.conceptMapKeys.indexOf(crtMapKey) >= 0) 
								$scope.conceptMapKey = crtMapKey;
							$scope.safeApply();
						});
				}
			}
		}
	);

	$scope.getConceptMaps();
}
