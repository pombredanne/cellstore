angular.module('main').controller('DashboardCtrl', function($scope, $rootScope, $anchorScroll, $location, $route, $http, $modal, $backend, QueriesService, entities) {
    $scope.service = (new QueriesService($backend.API_URL + '/_queries/public/api'));
    $scope.table1 = null;
    $scope.table2 = null;
    $scope.cik = ($route.current.params.cik ? $route.current.params.cik : null);
    $scope.entities = entities;

	$scope.selectEntity = function(item) { 
        $scope.cik = item.cik;
        $scope.name = item.name;
        $scope.ticker = item.tickers[0];
        $scope.goto("/dashboard/" + $scope.cik);
		$scope.getdata();
	};

    $scope.getdata = function ()
    {
        if (!$scope.cik) return;

        $scope.chart1 = {
            type: "LineChart",
            options: {
                legend: {position: 'top', alignment: 'end'},
                curveType: 'function',
                pointSize: 8,
                colors: ['#428BCA', '#ff9900'],
                width: "80%",
                height: 500,
                chartArea: {left: 120, top: 40, width: "85%", height: "80%"},
                tooltip: { isHtml: true },
                focusTarget: 'category', 
                bar: { groupWidth: "30%" },
                hAxis: { format: "QQQ yyyy" }
            }
        };

        $scope.table1 = {"cols": [
            {id: "date", label: "Date", type: "string"},
            {id: "", role: "tooltip", type: "string", p: { role: "tooltip", html: true }},
            {id: "revenue", label: "Revenue", type: "number"},
            {id: "netIncome", label: "Net Income", type: "number"}
        ], "rows": []};

        $scope.chart1.data = $scope.table1;

        $scope.chart2 = {
            type: "ColumnChart",
            options: {
                legend: {position: 'top', alignment: 'end'},
                colors: ['#428BCA', '#ff9900'],
                width: "80%",
                height: 500,
                chartArea: {left: 120, top: 40, width: "85%", height: "80%"},
                tooltip: { isHtml: true },
                focusTarget: 'category', 
                bar: { groupWidth: "30%" },
                hAxis: { format: "QQQ yyyy" },
                vAxis: { minValue: 0 }
            }
        };
        $scope.table2 = {"cols": [
            {id: "date", label: "Date", type: "string"},
            {id: "", role: "tooltip", type: "string", p: { role: "tooltip", html: true }},
            {id: "liabilities", label: "Liabilities", type: "number"},
            {id: "equity", label: "Equity", type: "number"}
        ], "rows": []};

        $scope.chart2.data = $scope.table2;

        $scope.httpDates = {};
        var fiscalYears = [];
        var lastYear = (new Date()).getFullYear();
        for (var i = 0; i < 4; i++)
        {
            for (var j = 0; j < 4; j++)
            {
                $scope.httpDates[(lastYear - 4 + i) + "Q" + (j + 1)] = [
                    {v: "Q" + (j + 1) + " " + (lastYear - 4 + i) },
                    {v: null},
                    {v: null},
                    {v: null},
                    {v: null},
                    {v: null},
                    {v: null}
                ];
            }
            fiscalYears.push(lastYear - 4 + i);
        }
        
        var concepts = ['fac:Revenues', 'fac:NetIncomeLoss', 'fac:LiabilitiesAndEquity', 'fac:Equity'];
        
        $scope.params = {
                $method: 'POST',
                concept: concepts,
                map: 'FundamentalAccountingConcepts',
                fiscalYear: fiscalYears,
                fiscalPeriod: 'ALL',
                cik: $scope.cik,
                token: $scope.token
        };

        $scope.service.listFacts($scope.params)
           .then(
                function(data) { 
                    if (data && data.FactTable)
                        data.FactTable.forEach(function(item)
                        {
                            var p = (item["Aspects"]["bizql:FiscalPeriod"] == "FY" ? "Q4" : item["Aspects"]["bizql:FiscalPeriod"]);
                            var date = $scope.httpDates[item["Aspects"]["bizql:FiscalYear"] + p];
                            if (date) {
                                var index=concepts.indexOf(item["Aspects"]["xbrl:Concept"]);
                                if (index >= 0) date[index + 1]["v"] = item["Value"];
                            }
                        });
                    
                    var makeTooltip = function(key, item1, title1, item2, title2) {
                        if (!item1 && !item2) return " ";
                        var ret = "<dl class='chart-tip'><dt>" + key + "</dt><dd>";
                        if (item1) ret += "<i class='fa fa-square' style='color:#428BCA'></i> " + title1 + ": " + item1.toLocaleString();
                        if (item2) {
                            if (item1) ret += "<br>";
                            ret += "<i class='fa fa-square' style='color:orange'></i> " + title2 + ": " + item2.toLocaleString();
                        }
                        ret += "</dd></dl>";
                        return ret;
                    }

                    var sum;
                    var lastYear = (new Date()).getFullYear();
                    for (var i = 0; i < 4; i++)
                    {
                        var q1 = $scope.httpDates[(lastYear - 4 + i) + "Q1"];
                        var q2 = $scope.httpDates[(lastYear - 4 + i) + "Q2"];
                        var q3 = $scope.httpDates[(lastYear - 4 + i) + "Q3"];
                        var q4 = $scope.httpDates[(lastYear - 4 + i) + "Q4"];
                        if (q4){
                            if (q4[1]["v"])
                            {
                                sum=(parseFloat(q4[1]["v"]) || 0);
                                if (q1) sum = sum - (parseFloat(q1[1]["v"]) || 0);
                                if (q2) sum = sum - (parseFloat(q2[1]["v"]) || 0);
                                if (q3) sum = sum - (parseFloat(q3[1]["v"]) || 0);
                                q4[1]["v"] = sum;
                            }

                            if (q4[2]["v"])
                            {
                                sum=(parseFloat(q4[2]["v"]) || 0);
                                if (q1) sum = sum - (parseFloat(q1[2]["v"]) || 0);
                                if (q2) sum = sum - (parseFloat(q2[2]["v"]) || 0);
                                if (q3) sum = sum - (parseFloat(q3[2]["v"]) || 0);
                                q4[2]["v"] = sum;
                            }

                            if (q1 && q1[3]["v"]) q1[3]["v"] = (parseFloat(q1[3]["v"]) || 0) - (parseFloat(q1[4]["v"]) || 0);
                            if (q2 && q2[3]["v"]) q2[3]["v"] = (parseFloat(q2[3]["v"]) || 0) - (parseFloat(q2[4]["v"]) || 0);
                            if (q3 && q3[3]["v"]) q3[3]["v"] = (parseFloat(q3[3]["v"]) || 0) - (parseFloat(q3[4]["v"]) || 0);
                            if (q4 && q4[3]["v"]) q4[3]["v"] = (parseFloat(q4[3]["v"]) || 0) - (parseFloat(q4[4]["v"]) || 0);
                        }
                        q1[5]["v"] = makeTooltip(q1[0]["v"], parseFloat(q1[1]["v"]), "Revenue", parseFloat(q1[2]["v"]), "Net Income");
                        q2[5]["v"] = makeTooltip(q2[0]["v"], parseFloat(q2[1]["v"]), "Revenue", parseFloat(q2[2]["v"]), "Net Income");
                        q3[5]["v"] = makeTooltip(q3[0]["v"], parseFloat(q3[1]["v"]), "Revenue", parseFloat(q3[2]["v"]), "Net Income");
                        q4[5]["v"] = makeTooltip(q4[0]["v"], parseFloat(q4[1]["v"]), "Revenue", parseFloat(q4[2]["v"]), "Net Income");

                        q1[6]["v"] = makeTooltip(q1[0]["v"], parseFloat(q1[3]["v"]), "Liabilities", parseFloat(q1[4]["v"]), "Equity");
                        q2[6]["v"] = makeTooltip(q2[0]["v"], parseFloat(q2[3]["v"]), "Liabilities", parseFloat(q2[4]["v"]), "Equity");
                        q3[6]["v"] = makeTooltip(q3[0]["v"], parseFloat(q3[3]["v"]), "Liabilities", parseFloat(q3[4]["v"]), "Equity");
                        q4[6]["v"] = makeTooltip(q4[0]["v"], parseFloat(q4[3]["v"]), "Liabilities", parseFloat(q4[4]["v"]), "Equity");
                    }
                    $.map($scope.httpDates, function (el, index)
                    {
                        $scope.table1.rows.push({ c: [ el[0], el[5], el[1], el[2] ]});
                        $scope.table2.rows.push({ c: [ el[0], el[6], el[3], el[4] ]});
                    });
                    $scope.chart1.data = $scope.table1;
                    $scope.chart2.data = $scope.table2;
                },
                function(response) { $scope.$emit("error", response.status, response.data); });
    };

    $scope.openEntityDetails = function(){
        var modalInstance = $modal.open({
            templateUrl: '/views/entity_details.html',
            controller: 'EntityDetailsCtrl',
            resolve: {
                name: function(){ return $scope.name; },
                cik: function(){ return $scope.cik; },
                ticker: function(){ return $scope.ticker; },
                result: function () {
                    return $scope.service.listEntities({ $method: 'POST', cik: $scope.cik, token: $scope.token });
                }
            }
        });
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

    if ($route.current.params.cik) {
        $scope.entities.forEach(function(entity) {
            if (entity.cik == $route.current.params.cik)
				$scope.selectEntity(entity);
        });
    };
});