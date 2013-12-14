'use strict';

function SearchCtrl($scope, $location, $route, $http)
{
    $scope.endyear = 2014;
    $scope.year = ($route.current.params.year ? $route.current.params.year : $scope.endyear - 1);
    $scope.period = ($route.current.params.period ? $route.current.params.period : "FY");
    $scope.conceptMaps = ['FundamentalAccountingConcepts' ];
    $scope.conceptMap = $scope.conceptMaps[0];
    $scope.conceptMapKey = '';
    $scope.conceptMapKeys = ['fac:Assets', 'fac:Revenues' , 'fac:Equity'];
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

    $scope.getValue = function ()
    {
        if ($scope.cik != '' && $scope.period && $scope.year && $scope.conceptMap != null && $scope.conceptMapKey != '')
        {
            $http({method: 'GET', url: '/data/factValue.json'})
                .success(function (data, status, headers, config)
                {
                    $scope.factValue = Number(data.fact.value['#text']).toLocaleString();
                    $scope.units = data.fact.value['-unit'].split(':')[1];
                })
                .error(function (data, status, headers, config)
                {
                    $scope.factValue = '';
                    $scope.units = '';
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
}
