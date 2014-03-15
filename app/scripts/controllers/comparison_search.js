angular.module('main').controller('ComparisonSearchCtrl', ['$scope', '$http', '$modal', '$backend', 'QueriesService', 'conceptMaps',
  function($scope, $http, $modal, $backend, QueriesService, conceptMaps) {
    $scope.none = "us-gaap Concepts";

    $scope.service = (new QueriesService($backend.API_URL + '/_queries/public/api'));
    if (conceptMaps.indexOf($scope.none) < 0) conceptMaps.push($scope.none);
    $scope.conceptMaps = conceptMaps;
    $scope.selection = { conceptMap : conceptMaps[0], filter: null, conceptMapKeys: [], dimensions: [] };
    $scope.entityIndex = -1;
    $scope.API_URL = $backend.API_URL;

    $scope.$watch(
        function() { 
                return $scope.selection.conceptMap // +  angular.toJson($scope.selection.filter)
        },
        function() {
            $scope.conceptMapKeys = [];
            $scope.selection.conceptMapKeys = [];
            
            if ($scope.selection.conceptMap && $scope.selection.conceptMap != $scope.none)
            {
                $http({
                        method: 'GET', 
                        url: $backend.API_URL + '/_queries/public/ConceptMapKeys.jq',
                        params: { _method: 'POST', mapName: $scope.selection.conceptMap, "token" : $scope.token },
						cache: true
                    })
                    .success(function (data, status, headers, config)
                    {
                        if (data) {
                            $scope.conceptMapKeys = data.mapKeys;
                        }
                    })
					.error(function(data, status) { 
						$scope.$emit('error', status, data);
					});
            }
            else
            {
                //CRD disable for now
                /*
                if ($scope.selection.filter)
                {
                    $scope.conceptMapKeys = [];

                    var cik = [];
                    $scope.selection.filter.entity.forEach(function(entity) { cik.push(entity.cik); });

                    $http({
                            method: 'GET', 
                            url: $backend.API_URL + '/_queries/public/FactualConcepts.jq',
                            params: { _method: 'POST', cik: cik, tag: $scope.selection.filter.tag, fiscalYearFocus: $scope.selection.filter.year, fiscalPeriodFocus: $scope.selection.filter.period, "token" : $scope.token },
                            cache: true
                        })
                        .success(function (data, status, headers, config)
                        {
                            if (data && data.factualConcepts) 
                                data.factualConcepts.forEach(function(item) {
                                    $scope.conceptMapKeys.push(item.name);
                                });
                        })
                        .error(function(data, status) { 
                            $scope.$emit("error", status, data);
                        });
                }
                */
            }

        }
    );
    
    $scope.$on('filterChanged',
        function(event, selection) {
            $scope.selection.filter = selection;
        }
    );

    $scope.addConceptKey = function(item) {
        if (item && $scope.selection.conceptMapKeys.indexOf(item) < 0) 
            $scope.selection.conceptMapKeys.push(item);
        $scope.conceptMapKey = "";
    };

    $scope.addDimension = function () {
        var modalInstance = $modal.open({
            templateUrl: 'dimension.html',
            controller: ['$scope', '$modalInstance', function ($scope, $modalInstance) {
                $scope.dimension = {};
                $scope.ok = function () {
                    $scope.dimension.attempted = true;
                    if(!$scope.dimension.form.$invalid)
                        $modalInstance.close({ 
                            name: $scope.dimension.name, 
                            value: $scope.dimension.value,
                            defaultValue: $scope.dimension.defaultValue 
                        });
                };

                $scope.cancel = function () {
                    $modalInstance.dismiss('cancel');
                };
            }]
        });

        modalInstance.result.then(function (item) {
          if ($scope.selection.dimensions.indexOf(item) < 0) 
            $scope.selection.dimensions.push(item);
        });
    };

    $scope.getValues = function() {
        if ($scope.conceptMapKey)
            $scope.addConceptKey($scope.conceptMapKey);
        
        if ($scope.selection.conceptMapKeys.length == 0)
        {
            $scope.$emit('alert', 'Warning', 'Please choose concepts to compare.');
            return;
        }

        $scope.data = [];
        $scope.params = { 
                $method: "POST", 
                cik: [], 
                tag: $scope.selection.filter.tag,
                fiscalYear: $scope.selection.filter.year,
                fiscalPeriod: $scope.selection.filter.period,
                concept: $scope.selection.conceptMapKeys,
                map: ($scope.selection.conceptMap != $scope.none ? $scope.selection.conceptMap : null),
                token: $scope.token 
            };
        $scope.selection.filter.entity.forEach(function(entity) { $scope.params['cik'].push(entity.cik); });
        $scope.selection.dimensions.forEach(function(dimension) { $scope.params[dimension.name] = dimension.value; $scope.params[dimension.name + ":default"] = dimension.defaultValue; });

        $scope.service.listFacts($scope.params)
            .then(function(data) {
                $scope.data = data.FactTable;
            },
            function(response) {
                $scope.$emit("error", response.status, response.data);
            });
    };
  $scope.trimURL = function(url) {
    if (url.length < 40) return url;

    return url.substr(0, 10) + "..." + url.substr(url.length - 30);
  };
  $scope.trim = function(item) {
    return angular.copy(item).splice(4, item.length - 5);
  };
  $scope.clear = function(item) {
    return item.replace("iso4217:", "").replace("xbrli:", "");
  };
  $scope.showText = function(html) {
    $scope.$emit("alert", "Text Details", html);
  };
  $scope.showNumber = function(value) {
    var n = parseFloat(value);
    if (isNaN(n)) return value;
    return n.toLocaleString();
  };
  $scope.enumerate = function(object) {
    var ret = [];
    $.map(object, function (el, index) {
      ret.push(el);
    });
    return ret;
  };
  $scope.enumerateKeys = function(object) {
    var ret = [];
    $.map(object, function (el, index) {
        if(index == 'xbrl:Entity') $scope.entityIndex = ret.length;
        ret.push(index);
    });
    return ret;
  };

  $scope.isBlock = function(string) {
     if (!string) return false;
     return string.length > 60;
  };

  $scope.getUrl = function(format) {
      var str = $backend.API_URL + '/_queries/public/api/facts.jq';
      var p = [];
      var index = -1;
      for(var param in $scope.params)
          if($scope.params.hasOwnProperty(param) && $scope.params[param]) {
              if (param == "$method") 
                  p.push("_method=" + encodeURIComponent($scope.params[param].toString()));
              else
                  if (param == "format") {
                    if (format) {
                        index = p.length;
                        p.push(param + "=" + encodeURIComponent(format));
                    }
                  }
                  else
                    if (Object.prototype.toString.call($scope.params[param]) === "[object Array]")
                      $scope.params[param].forEach(function(item) { p.push(param + "=" + encodeURIComponent(item)); });
                    else p.push(param + "=" + encodeURIComponent($scope.params[param].toString()));
          }
      if (index < 0 && format) p.push("format=" + encodeURIComponent(format));
      if (p.length > 0) str += '?' + p.join('&');
      return str;
  };
 }
]);
