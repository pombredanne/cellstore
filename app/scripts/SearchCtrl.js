'use strict';

function SearchCtrl($scope, $location, $route, $http, $filter)
{
    $scope.endyear = 2013;
    $scope.year = ($route.current.params.year ? $route.current.params.year : null);
    $scope.period = ($route.current.params.period ? $route.current.params.period : null);
    $scope.conceptMaps = ['FundamentalAccountingConcepts' ];
    $scope.conceptMap = $scope.conceptMaps[0];
    $scope.conceptMapKey = '';
    $scope.conceptMapKeys = ['fac:Assets', 'fac:Revenues' , 'fac:Equity'];
    $scope.entity = '';
    $scope.entities = [];
    $scope.factValue = '';
    $scope.units = '';
    $scope.Cik = '';

    $scope.change = function (year, period)
    {
        $location.path("/search/" + year + "/" + period);
        $scope.safeApply();
    };

    $scope.getEntities = function ()
    {
        $http({method: 'GET', url: '/data/entities.json'})
            .success(function (data, status, headers, config)
            {
                $scope.entities = data.entities.entity;

            })
            .error(function (data, status, headers, config)
            {
                $scope.entities = [];
            });

    }

    $scope.getValue = function ()
    {
        if ($scope.Cik != '' && $scope.period && $scope.year && $scope.conceptMap != null && $scope.conceptMapKey != '')
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

    if (!$route.current.params.year)
    {
        $scope.change($scope.endyear - 1, "FY");
    }

    $scope.SetCik = function ()
    {
        if (event.keyCode == 13 && $scope.entity)
            $filter('filter')($scope.entities, function (elem)
            {
                if ($scope.entity == elem.name)
                {
                    $scope.Cik = elem.cik;
                    return;
                }

            });


    }

    $scope.getEntities();
}
