angular.module('main').controller('ComparisonInformationCtrl', ['$scope', '$http', '$backend', 'QueriesService',
  function($scope, $http, $backend, QueriesService) {
    $scope.service = (new QueriesService($backend.API_URL + '/_queries/public/api'));
    $scope.showtab = [];
    $scope.reports = [];
    $scope.selection = null;
    
    $scope.$on('filterChanged',
        function(event, selection) {
            $scope.selection = selection;
            if (!selection) return;
            $scope.filings = null;
            $scope.error = false;
            $scope.errormany = false;
            
            var cik = [];
            $scope.selection.entity.forEach(function(entity) { cik.push(entity.cik); });
            $scope.service.listFilings({ 
                    $method: 'POST', 
                    cik: cik, 
                    tag: $scope.selection.tag,
                    fiscalYear: $scope.selection.year,
                    fiscalPeriod: $scope.selection.period,
                    token: $scope.token 
                })
                .then(function(data) {
                    $scope.filings = [];
                    data.Archives.forEach(function(a) { $scope.filings.push(a.AccessionNumber); });
                    if ($scope.filings.length > 30 && !$scope.nomany) {
                        $scope.errormany = true;
                    }
                    else $scope.getInfo();
                },
                function(response) {
                    if (response.status == "401")
                        $scope.error = true;
                    else
                        $scope.$emit("error", response.status, response.data);
                });
    }
   );

   $scope.getInfo = function() {
        var cik = [];
            $scope.selection.entity.forEach(function(entity) { cik.push(entity.cik); });

        $scope.reports = [];
        $http({
                method: 'GET', 
                url: $backend.API_URL + '/_queries/public/FactsForReportSchema.jq',
                params: { _method: 'POST', 
                    cik: cik, 
                    tag: $scope.selection.tag, 
                    fiscalYear: $scope.selection.year, 
                    fiscalPeriod: $scope.selection.period, 
                    reportSchema: 'FundamentalAccountingConcepts',
                    "token" : $scope.token 
                },
                cache: false
            })
            .success(function (data, status, headers, config)
            {
                var prepareReport = function(list, array, index) {
                    var j = 0;
                    for (var key in list) {
                        if (list.hasOwnProperty(key)) {
                            if (index == 0)
                            {
                                var item = {};
                                item.label = list[key]["Label"] ? list[key]["Label"] : "";
                                item.value = [];
                                item.type = [];
                                array[j] = item;
                            }
                            else item = array[j];

                            if (list[key]["Facts"] && list[key]["Facts"].length > 0) {
                                item.type[index] = list[key]["Facts"][0]["Type"];
                                if (list[key]["Facts"][0]["Type"] == "NumericValue") {
                                    var num = list[key]["Facts"][0]["Value"];
                                    if (!num) num = "0";
                                    item.value[index] = parseFloat(num).toLocaleString();
                                }
                                else
                                    item.value[index] = list[key]["Facts"][0]["Value"];
                            }
                            else {
                                item.value[index] = "";
                                item.type[index] = "";
                            }
                            j++;
                        }
                    }
                };

                for (var i = 0; i < data.length; i++)
                {
                    var root = data[i]["Trees"]["fac:FundamentalAccountingConceptsLineItems"]["To"]["fac:FundamentalAccountingConceptsHierarchy"]["To"];
                    var k = 0;
                    for (var report in root) {
                        if (root.hasOwnProperty(report) && report != "fac:KeyRatiosHierarchy") {
                            if (i == 0) {
                                var obj = { name: root[report]["Label"].toString().replace(" [Hierarchy]", ""), items: [] };
                                $scope.reports[k] = obj;
                            }
                            prepareReport(root[report]["To"], $scope.reports[k].items, i);
                            $scope.showtab.push(true);
                            k++;
                        }
                    };
                }
                $scope.error = false;
                $scope.errormany = false;
            }
        )
        .error(function (data, status, headers, config)
        {
            $scope.$emit("error", status, data);
        });
   };

   $scope.forceShow = function() {
       $scope.nomany=true;
       $scope.getInfo();
   };
  }
]);
