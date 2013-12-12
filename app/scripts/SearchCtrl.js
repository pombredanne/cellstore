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
    $scope.entities = [];
    $scope.factValue = '';
    $scope.units = '';
    $scope.name = '';
    $scope.cik = '';
    $scope.ticker = '';

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
                $scope.entities = data.entityNameTickerSymbolCikTuples;

            })
            .error(function (data, status, headers, config)
            {
                $scope.entities = [];
            });

    }

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

    $scope.update = function (element)
    {
        $scope.entities.filter(function (e)
        {
            if (e[element] == $scope[element])
            {
                $scope.name = e.name;
                $scope.cik = e.cik;
                $scope.ticker = e.ticker;
                return;
            }
        })

    };

    /* $scope.$watch('name', function (value)
     {
     $scope.entities.filter(function (e)
     {
     if (e.name == value)
     {
     $scope.name = e.name;
     $scope.cik = e.cik;
     $scope.ticker = e.ticker;
     return;
     }
     })

     });

     $scope.$watch('cik', function (value)
     {
     $scope.entities.filter(function (e)
     {
     if (e.cik == value)
     {
     $scope.name = e.name;
     $scope.cik = e.cik;
     $scope.ticker = e.ticker;
     return;
     }
     })

     });

     $scope.$watch('ticker', function (value)
     {
     $scope.entities.filter(function (e)
     {
     if (e.ticker == value)
     {
     $scope.name = e.name;
     $scope.cik = e.cik;
     $scope.ticker = e.ticker;
     return;
     }
     })

     });*/
}
