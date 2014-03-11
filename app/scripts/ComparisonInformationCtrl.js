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
                    params: { _method: 'POST', cik: cik, fiscalYearFocus: selection.year, fiscalPeriodFocus: selection.period, reportSchema: 'FundamentalAccountingConcepts', "token" : $scope.token },
                    cache: false
                })
                .success(function (data, status, headers, config)
                {
                    var root = data["Trees"]["fac:FundamentalAccountingConceptsLineItems"]["To"]["fac:FundamentalAccountingConceptsHierarchy"]["To"];
                    console.log(angular.toJson(root));
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
                                    if (list[key]["Facts"][0]["AuditTrails"] && list[key]["Facts"][0]["AuditTrails"].length > 0)
                                    {
                                        switch(list[key]["Facts"][0]["AuditTrails"][0]["Type"]) {
                                            case 'concept-maps:concept-maps':
                                                item.auditLabel = list[key]["Facts"][0]["AuditTrails"][0]["Label"];
                                                item.auditValue = list[key]["Facts"][0]["AuditTrails"][0]["Data"]["OriginalConcept"];
                                                break;

                                            case 'hypercubes:dimension-default':
                                                item.auditLabel = list[key]["Facts"][0]["AuditTrails"][0]["Label"];
                                                item.auditValue = list[key]["Facts"][0]["AuditTrails"][0]["Data"]["Dimension"];
                                                break;
                                            default: 
                                                item.auditLabel = "";
                                                item.auditValue = "";
                                        }
                                    }
                                    else item.audit = "";
                                }
                                else {
                                    item.value = "";
                                    item.type = "";
                                    item.auditLabel = "";
                                    item.auditValue = "";
                                }
                                array.push(item);
                            }
                            if (item.value.length == 0)
                              item.auditValue = "Not Reported";
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
