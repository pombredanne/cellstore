angular.module('main').controller('ComparisonComponentsCtrl', ['$scope', '$http', '$modal', '$backend', 'QueriesService',

  function($scope, $http, $modal, $backend, QueriesService) {

    $scope.choice = "disclosure";
    $scope.service = (new QueriesService($backend.API_URL + '/_queries/public/api'));
    $scope.results = [];
    $scope.selection = {};

    $scope.$on('filterChanged',
      function(event, selection) {
        $scope.selection = selection;
     })

    $scope.getValues = function() {
      $scope.results = [];

      if (!$scope.searchConcept && !$scope.searchDisclosure) return;

      $scope.params = {
        $method: "POST",
        tag: $scope.selection.tag,
        cik: [], 
        fiscalYear: $scope.selection.year,
        fiscalPeriod: $scope.selection.period,
        token: $scope.token 
      };

      if ($scope.choice == "disclosure") {
        $scope.params["disclosure"] = $scope.searchDisclosure;
      } else {
        $scope.params["concept"] = $scope.searchConcept;
      }

      $scope.selection.entity.forEach(function(entity) { $scope.params['cik'].push(entity.cik); });

      $scope.service.listComponents($scope.params)
          .then(function(data) {
            data.Archives.forEach(function(archive) {
              archive.Components.forEach(function(component) {
                var item = angular.copy(component);
                angular.extend(item,
                  {
                    "AccessionNumber" : archive.AccessionNumber, 
                    "CIK" : (archive.CIK || '').substring(23),
                    "EntityRegistrantName" : archive.EntityRegistrantName,
                    "FormType" : archive.FormType, 
                    "FiscalYear" : archive.FiscalYear, 
                    "FiscalPeriod" : archive.FiscalPeriod 
                  });
                $scope.results[$scope.results.length] = item;
              })
            })
          },
          function(response) {
              $scope.$emit("error", response.status, response.data);
          });
     }

    $scope.trimTableURL = function(url) {
      if (url.length < 30) {
          return url;
      }
      return url.substr(0, 10) + '...' + url.substr(url.length - 20);
    }

    $scope.trimNetworkURL = function(url) {
      if (url.length < 50) {
          return url;
      }
      return url.substr(0, 20) + '...' + url.substr(url.length - 30);
    }
    
  }
]);

