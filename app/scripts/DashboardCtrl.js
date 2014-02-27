angular.module('main').controller('DashboardCtrl', ['$scope', '$rootScope', '$anchorScroll', '$location', '$route', '$http', '$backend', 'entities',
  function($scope, $rootScope, $anchorScroll, $location, $route, $http, $backend, entities) {
    $scope.table = null;
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

        var ochart = {};
        ochart.options = {
            legend: {position: 'top', alignment: 'end'},
            curveType: 'function',
            pointSize: 8,
            colors: ['#428BCA', 'orange'],
            width: "80%",
            height: 500,
            chartArea: {left: 120, top: 40, width: "85%", height: "80%"},
            tooltip: { isHtml: true },
            focusTarget: 'category', 
            bar: { groupWidth: "30%" },
            hAxis: { format: "QQQ yyyy" }
        };
        ochart.type = "LineChart";
        $scope.chart1 = ochart;

        $scope.table = {"cols": [
            {id: "date", label: "Date", type: "string"},
            {id: "", role: "tooltip", type: "string", p: { role: "tooltip", html: true }},
            {id: "revenue", label: "Revenue", type: "number"},
            {id: "netIncome", label: "Net Income", type: "number"}
        ], "rows": []};

        $scope.httpDates = {};
        var lastYear = (new Date()).getFullYear();
        for (
            var i = 0; i < 4; i++)
        {
            for (
                var j = 0; j < 4; j++)
            {
                $scope.httpDates[(lastYear - 4 + i) + "Q" + (j + 1)] = {c: [
                    {v: "Q" + (j + 1) + " " + (lastYear - 4 + i) },
                    {v: null},
                    {v: null},
                    {v: null}
                ] };
            }
        }
        $scope.chart1.data = $scope.table;

        $scope.httpLoaders = 0;

        $http({
                method: 'GET', 
                url: $backend.API_URL + '/_queries/public/ConceptValuesByQuarter.jq',
                params: { _method: 'POST', cik: $scope.cik, conceptName: 'fac:Revenues', map: 'FundamentalAccountingConcepts', "token" : $scope.token },
				cache: true
            })
            .success(function (data, status, headers, config)
            {
                if (data && data.valuesByQuarter)
                    data.valuesByQuarter.forEach(function (itemRev)
                    {
                        var p = (itemRev.fiscalPeriod == "FY" ? "Q4" : itemRev.fiscalPeriod);
                        var date = $scope.httpDates[itemRev.fiscalYear + p];
                        if (date) date.c[2]["v"] = itemRev.value;
                    });
                $scope.httpLoaders += 1;
                $scope.safeApply();
            })
            .error(function (data, status, headers, config)
            {
                $scope.httpLoaders = -1;
                $scope.safeApply();
            });
        
        $http({
                method: 'GET', 
                url: $backend.API_URL + '/_queries/public/ConceptValuesByQuarter.jq',
                params: { _method: 'POST', cik: $scope.cik, conceptName: 'fac:NetIncomeLoss', map: 'FundamentalAccountingConcepts', "token" : $scope.token },
				cache: true
            })
            .success(function (data, status, headers, config)
            {
                if (data && data.valuesByQuarter)
                    data.valuesByQuarter.forEach(function (itemInc)
                    {
                        var p = (itemInc.fiscalPeriod == "FY" ? "Q4" : itemInc.fiscalPeriod);
                        var date = $scope.httpDates[itemInc.fiscalYear + p];
                        if (date) date.c[3]["v"] = itemInc.value;
                    });
                $scope.httpLoaders += 1;
                $scope.safeApply();
            })
            .error(function (data, status, headers, config)
            {
                $scope.httpLoaders = -1;
                $scope.safeApply();
            });
    };

    $scope.$watch("httpLoaders", function(newValue, oldValue) { 
        if (newValue < 0) 
        {
            $scope.chart1 = null;
        }
        if (newValue == 2)
        {
            var makeTooltip = function(item) {
                if (!item) { item.c[1]["v"] = " "; return; }
                if (item.c[0]["v"]) {
                    var r = parseFloat(item.c[2]["v"]);
                    var i = parseFloat(item.c[3]["v"]);
                    if (!i && !r) { item.c[1]["v"] = " "; return; }
                    item.c[1]["v"] = "<dl class='chart-tip'><dt>" + item.c[0]["v"] + "</dt><dd>";
                    if (r) item.c[1]["v"] += "<i class='fa fa-square' style='color:#428BCA'></i> Revenue: " + r.toLocaleString();
                    if (i)
                    {
                        if (r) item.c[1]["v"] += "<br>";
                        item.c[1]["v"] += "<i class='fa fa-square' style='color:orange'></i> Net Income: " + i.toLocaleString();
                    }
                    item.c[1]["v"] += "</dd></dl>";
                }
            }

			var lastYear = (new Date()).getFullYear();
            for (var i = 0; i < 4; i++)
            {
                var q1 = $scope.httpDates[(lastYear - 4 + i) + "Q1"];
                var q2 = $scope.httpDates[(lastYear - 4 + i) + "Q2"];
                var q3 = $scope.httpDates[(lastYear - 4 + i) + "Q3"];
                var q4 = $scope.httpDates[(lastYear - 4 + i) + "Q4"];
                if (q4){
                    var sum=parseFloat(q4.c[2]["v"]);
                    if (q1) sum = sum - parseFloat(q1.c[2]["v"]);
                    if (q2) sum = sum - parseFloat(q2.c[2]["v"]);
                    if (q3) sum = sum - parseFloat(q3.c[2]["v"]);
                    q4.c[2]["v"] = sum;

                    sum=parseFloat(q4.c[3]["v"]);
                    if (q1) sum = sum - parseFloat(q1.c[3]["v"]);
                    if (q2) sum = sum - parseFloat(q2.c[3]["v"]);
                    if (q3) sum = sum - parseFloat(q3.c[3]["v"]);
                    q4.c[3]["v"] = sum;
                }
                makeTooltip(q1);
                makeTooltip(q2);
                makeTooltip(q3);
                makeTooltip(q4);
            }
            $.map($scope.httpDates, function (element, index)
            {
                $scope.table.rows.push(element);
            });
            $scope.chart1.data = $scope.table;
            $scope.safeApply();
        }
    });

	$scope.substring = function(string, len) {
		if (string && string.length > len)
			return string.substring(0, len) + "...";
		else return string;
	};

    if ($route.current.params.cik)
        $scope.entities.forEach(function(entity) {
            if (entity.cik == $route.current.params.cik)
				$scope.selectEntity(entity);
        });
  }
]);
