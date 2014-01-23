'use strict';

function SearchCtrl($scope, $location, $route, $http, $sce, API_URL, years, entities)
{
    $scope.year = (new Date()).getFullYear();
    $scope.period = "FY";
    $scope.conceptMaps = [];
    $scope.conceptMapKeys = [];
    $scope.factValue = '';
    $scope.factText = '';
    $scope.units = '';
    $scope.years = years;
    $scope.entities = entities;

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
        $scope.factText = '';
        $scope.units = '';
        if ($scope.cik && $scope.period && $scope.year && $scope.conceptMapKey != '')
        {
            $http({
                    method: 'POST', 
                    url: API_URL + '/_queries/public/FactForConcept.jq',
                    params: { cik: $scope.cik, fiscalYearFocus: $scope.year, fiscalPeriodFocus: $scope.period, conceptName: $scope.conceptMapKey, map: $scope.conceptMap || "None" }
                })
                .success(function (data, status, headers, config)
                {
                    if (data.value) 
                        if(data.type == "NumericValue")
                        {
                            $scope.factValue = parseFloat(data.value).toLocaleString();
                            $scope.units = data.unit.split(':')[1];
                        }
                        else $scope.factText = $sce.trustAsHtml(data.value);
                });
        }
        else
            alert('Complete all parameters!');

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
    
    if ($route.current.params.cik)
        $scope.entities.forEach(function(entity) {
            if (entity.cik == $route.current.params.cik) 
                $scope.selectEntity(entity); 
        });
    $scope.getConceptMaps();
}
