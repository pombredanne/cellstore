angular.module('main').controller('DashboardCtrl', ['$scope', '$rootScope', '$anchorScroll', '$location', '$route', '$http', '$backend', 'years', 'periods', 'entities',
  function($scope, $rootScope, $anchorScroll, $location, $route, $http, $backend, years, periods, entities) {
    $scope.table = null;
    $scope.year = ($route.current.params.year ? parseInt($route.current.params.year) : null);
    $scope.period = ($route.current.params.period ? $route.current.params.period : null);
    $scope.cik = ($route.current.params.cik ? $route.current.params.cik : null);
    $scope.reports = [];
    $scope.showtab = [];
    $scope.years = years;
	$scope.periods = periods;
    $scope.entities = entities;

	$scope.computeUsage = function() { 
		$scope.usage = [];
		years.forEach(function(year) {
			$scope.usage.push({ used: false, periods: [ { used: false }, { used: false }, { used: false }, { used: false } ] });
		});

		$http({
			method: 'GET', 
			url: $backend.API_URL + '/_queries/public/FYandFPByCIK.jq',
			params: { _method: 'POST', cik: $scope.cik, "token" : $scope.token },
			cache: true
		})
		.success(function (data, status, headers, config)
		{
			if (data && data.filings)
			{
				data.filings.forEach(function(filing) {
					$scope.usage[$scope.years.indexOf(filing.fiscalYear)].used = true;
					$scope.usage[$scope.years.indexOf(filing.fiscalYear)].periods[$scope.periods.indexOf(filing.fiscalPeriod)].used = true;
				});
				$scope.adjustYearPeriod();
			}
			else $scope.$emit("error", status, data);
		})
		.error(function(data, status) { 
			$scope.$emit("error", status, data);
		});
	};

	$scope.adjustYearPeriod = function() {		
		if ($scope.year && !$scope.usage[$scope.years.indexOf($scope.year)].used) 
			$scope.year = null;
		
		if (!$scope.year)
			for (var i = 0; i < $scope.years.length; i++)
				if ($scope.usage[i].used)
				{
					$scope.year = $scope.years[i];
					$scope.period = $scope.periods[0];
					break;
				}

		if ($scope.period && !$scope.usage[$scope.years.indexOf($scope.year)].periods[$scope.periods.indexOf($scope.period)].used) 
			$scope.period = null;
		
		if (!$scope.period)
		{
			var pers = $scope.usage[$scope.years.indexOf($scope.year)].periods;
			for (var i = 0; i < pers.length; i++)
				if (pers[i].used) {
					$scope.period = $scope.periods[i];
					break;
				}
		}
	};

    $scope.selectEntity = function(item) { 
        $scope.cik = item.cik;
        $scope.name = item.name;
        $scope.ticker = item.tickers[0];
		$scope.year = null;
		$scope.period = null;
        $scope.change();
    };

	$scope.setYear = function(year, used) {
		if (used)
		{
			$scope.year = year;
			$scope.adjustYearPeriod();
			$scope.change();
		}
	};

	$scope.setPeriod = function(period, used) {
		if (used)
		{
			$scope.period = period;
			$scope.adjustYearPeriod();
			$scope.change();
		}
	};

    $scope.change = function ()
    {
		if ($scope.year && $scope.period)
			$scope.goto("/dashboard/" + $scope.cik + "/" + $scope.year + "/" + $scope.period);
		else 
		{ 
			$scope.goto("/dashboard/" + $scope.cik);
			$http({
					method: 'GET', 
					url: $backend.API_URL + '/_queries/public/LatestFYandFPByCIK.jq',
					params: { _method: 'POST', cik: $scope.cik, "token" : $scope.token },
					cache: true
				})
				.success(function (data, status, headers, config)
				{
					if (data && data.latestFYPeriod)
					{
						$scope.year = data.latestFYPeriod.fiscalYear;
						$scope.period = data.latestFYPeriod.fiscalPeriod;
						$scope.goto("/dashboard/" + $scope.cik + "/" + $scope.year + "/" + $scope.period);
					}
					else
						$scope.$emit("error", status, data);
				})
				.error(function (data, status, headers, config)
				{
					$scope.$emit("error", status, data);
				});
		};
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
        $scope.chart.data = $scope.table;

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
            $scope.chart.data = $scope.table;
        }
    });

	$scope.substring = function(string, len) {
		if (string && string.length > len)
			return string.substring(0, len) + "...";
		else return string;
	};

    $scope.getComponent = function ()
    {
        if (!$scope.cik) return;
        $scope.reports = [];
        $http({
                method: 'GET', 
                url: $backend.API_URL + '/_queries/public/FactsForReportSchema.jq',
                params: { _method: 'POST', cik: $scope.cik, fiscalYearFocus: $scope.year, fiscalPeriodFocus: $scope.period, reportSchema: 'FundamentalAccountingConcepts', "token" : $scope.token },
				cache: true
            })
            .success(function (data, status, headers, config)
            {
                var root = data["Trees"]["fac:FundamentalAccountingConceptsLineItems"]["To"]["fac:FundamentalAccountingConceptsHierarchy"]["To"];
                
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
			$scope.$emit("error", status, data);
        });
    }

    if ($route.current.params.cik)
        $scope.entities.forEach(function(entity) {
            if (entity.cik == $route.current.params.cik){
				if ($scope.year && $scope.period)
				{
					$scope.cik = entity.cik;
					$scope.name = entity.name;
					$scope.ticker = entity.tickers[0];
					$scope.computeUsage();
				}
				else { 
					$scope.year = null; 
					$scope.period = null;
					$scope.change();
				}
			}
        });
	
	$scope.getdata();
    $scope.getComponent();
  }
]);
