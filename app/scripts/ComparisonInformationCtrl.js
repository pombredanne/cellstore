angular.module('main').controller('ComparisonInformationCtrl', ['$scope', '$http', '$backend', 'QueriesService',
  function($scope, $http, $backend, QueriesService) {
    $scope.service = (new QueriesService($backend.API_URL + '/_queries/public/api'));

    $scope.$on('filterChanged',
        function(event, selection) {
            var cik = [];
            selection.entity.forEach(function(entity) { cik.push(entity.cik); });
            
            $scope.reports = [];
            $http({
                    method: 'GET', 
                    url: $backend.API_URL + '/_queries/public/FactsForReportSchema.jq',
                    params: { _method: 'POST', cik: cik, tag: selection.tag, fiscalYearFocus: selection.year, fiscalPeriodFocus: selection.period, reportSchema: 'FundamentalAccountingConcepts', "token" : $scope.token },
                    cache: false
                })
                .success(function (data, status, headers, config)
                {
                    var root = data[0]["Trees"]["fac:FundamentalAccountingConceptsLineItems"]["To"]["fac:FundamentalAccountingConceptsHierarchy"]["To"];

                    var prepareReport = function(list, array) {
                        for (var key in list) {
                            if (list.hasOwnProperty(key)) {
                                var item = {};
                                item.label = list[key]["Label"] ? list[key]["Label"] : "";
                                if (list[key]["Facts"] && list[key]["Facts"].length > 0) {
                                    item.type = list[key]["Facts"][0]["Type"];
                                    if (list[key]["Facts"][0]["Type"] == "NumericValue") {
                                        var num = list[key]["Facts"][0]["Value"];
                                        if (!num) num = "0";
                                        item.value = parseFloat(num).toLocaleString();
                                    }
                                    else
                                        item.value = list[key]["Facts"][0]["Value"];
                                }
                                else {
                                    item.value = "";
                                    item.type = "";
                                }
                                array.push(item);
                            }
                        }
                    };
                    
                    for (var report in root) {
                        if (root.hasOwnProperty(report) && report != "fac:KeyRatiosHierarchy") {
                            var obj = { name: root[report]["Label"].toString().replace(" [Hierarchy]", ""), items: [] };
                            prepareReport(root[report]["To"], obj.items);
                            $scope.reports.push(obj);
                            $scope.showtab.push(true);
                        }
                    };
                    $scope.safeApply();
                }
            )
            .error(function (data, status, headers, config)
            {
                $scope.$emit("error", status, data);
            });
    }
   );
  }
]);
