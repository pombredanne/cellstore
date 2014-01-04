'use strict';

function DashboardCtrl($scope, $rootScope, $location, $route, $http, API_URL, LAST_YEAR)
{
    $scope.table = null;
    $scope.year = ($route.current.params.year ? $route.current.params.year : null);
    $scope.period = ($route.current.params.period ? $route.current.params.period : null);
    $scope.cik = ($route.current.params.cik ? $route.current.params.cik : null);
    $scope.secondtab = ($route.current.params.year ? true : false);
    $scope.reports = [];
	$scope.showtab = [];

    $scope.selectEntity = function(item) { 
        $scope.cik = item.cik;
        $scope.name = item.name;
        $scope.ticker = item.tickers[0];
        $scope.change($scope.year, $scope.period);
    };

    $scope.change = function (year, period)
    {
        $location.path("/dashboard/" + $scope.cik + (year ? "/" + year : "") + (period ? "/" + period : ""));
        $scope.safeApply();
    };

    $scope.settab = function (tab)
    {
        if (tab == 0)
        {
            if ($route.current.params.year)
            {
                $location.path("/dashboard/" + $scope.cik);
                $scope.safeApply();
            }
        }
        else if (!$route.current.params.year)
        {
            $scope.change(LAST_YEAR - 1, "FY");
        }
    };

    $scope.getdata = function ()
    {
		if (!$scope.cik) return;

        var ochart = {};
        ochart.options = {
            legend: {position: 'top'},
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
        $scope.chart = ochart;

        $scope.table = {"cols": [
            {id: "date", label: "Date", type: "string"},
            {id: "", role: "tooltip", type: "string", p: { role: "tooltip", html: true }},
            {id: "revenue", label: "Revenue", type: "number"},
            {id: "netIncome", label: "Net Income", type: "number"}
        ], "rows": []};

        $scope.httpDates = {};
        for (
            var i = 0; i < 4; i++)
        {
            for (
                var j = 0; j < 4; j++)
            {
                $scope.httpDates[(LAST_YEAR - 4 + i) + "Q" + (j + 1)] = {c: [
                    {v: "Q" + (j + 1) + " " + (LAST_YEAR - 4 + i) },
                    {v: null},
                    {v: null},
                    {v: null}
                ] };
            }
        }
        $scope.chart.data = $scope.table;

		$scope.httpLoaders = 0;

        $http({
                method: 'POST', 
                url: API_URL + '/_queries/public/ConceptValuesByQuarter.jq',
                params: { cik: $scope.cik, conceptName: 'fac:Revenues', map: 'FundamentalAccountingConcepts' }
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
				method: 'POST', 
				url: API_URL + '/_queries/public/ConceptValuesByQuarter.jq',
				params: { cik: $scope.cik, conceptName: 'fac:NetIncomeLoss', map: 'FundamentalAccountingConcepts' }
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
			$scope.chart = null;
		}
		if (newValue == 2)
		{
			var makeTooltip = function(item) {
				if (!item) { item.c[1]["v"] = " "; return; }
				if (item.c[0]["v"]) {
					var r = parseFloat(item.c[2]["v"]);
					var i = parseFloat(item.c[3]["v"]);
					if (!i && !r) { item.c[1]["v"] = " "; return; }
					item.c[1]["v"] = "<dl class='charttip'><dt>" + item.c[0]["v"] + "</dt><dd>";
					if (r) item.c[1]["v"] += "<i class='fa fa-square' style='color:#428BCA'></i> Revenue: " + r.toLocaleString();
					if (i)
					{
						if (r) item.c[1]["v"] += "<br>";
						item.c[1]["v"] += "<i class='fa fa-square' style='color:orange'></i> Net Income: " + i.toLocaleString();
					}
					item.c[1]["v"] += "</dd></dl>";
				}
			}

			for (var i = 0; i < 4; i++)
			{
				var q1 = $scope.httpDates[(LAST_YEAR - 4 + i) + "Q1"];
				var q2 = $scope.httpDates[(LAST_YEAR - 4 + i) + "Q2"];
				var q3 = $scope.httpDates[(LAST_YEAR - 4 + i) + "Q3"];
				var q4 = $scope.httpDates[(LAST_YEAR - 4 + i) + "Q4"];
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
			$scope.chart.data = $scope.table;
		}
	});

    $scope.$watch("entities", function(newValue, oldValue) {
        if ($route.current.params.cik && newValue && newValue.length > 0)
        {
            newValue.forEach(function(entity) {
                if (entity.cik == $route.current.params.cik) $scope.selectEntity(entity); 
            });
        };
    });

    $scope.getComponent = function ()
    {
		if (!$scope.cik) return;
		$scope.reports = [];
        $http({
                method: 'POST', 
                url: API_URL + '/_queries/public/FactsForReportSchema.jq',
                params: { cik: $scope.cik, fiscalYearFocus: $scope.year, fiscalPeriodFocus: $scope.period, reportSchema: 'FundamentalAccountingConcepts' }
            })
            .success(function (data, status, headers, config)
            {
				var root = data["Trees"]["fac:FundamentalAccountingConceptsLineItems"]["To"]["fac:FundamentalAccountingConceptsHierarchy"]["To"];
				
				var prepareReport = function(list, array) {
					for (var key in list) {
						if (list.hasOwnProperty(key)) {
							var item = {};
							item.label = list[key]["Label"] ? list[key]["Label"] : "";
							if (list[key]["Facts"]) {
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
							item.audit = list[key]["Name"] ? list[key]["Name"] : "";
							array.push(item);
						}
					}
				};
				
				for (var report in root) {
					if (root.hasOwnProperty(report)) {
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
			$scope.reports = [];
		});
    }
	
	if (!$scope.year)
	{
		$scope.getdata();
	}
	else
	{
		$scope.getComponent();
	}
};
