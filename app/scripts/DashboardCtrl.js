'use strict';

function DashboardCtrl($scope, $location, $route, $http) {
	$scope.text = "";
	$scope.table = null;
	$scope.endyear = 2014;
	$scope.year = ($route.current.params.year ? $route.current.params.year : null);
	$scope.period = ($route.current.params.period ? $route.current.params.period : null);
	$scope.secondtab = ($route.current.params.year ? true : false);
	$scope.showtab0 = true;

	$scope.change = function(year, period) {
		$location.path("/dashboard/" + year + "/" + period);
		$scope.safeApply();
	};

	$scope.settab = function(tab) {
		if (tab == 0) {
			if($route.current.params.year) {
				$location.path("/dashboard");
				$scope.safeApply();
			}
		}
		else
			if (!$route.current.params.year) $scope.change($scope.endyear - 1, "FY");	
	};

	$scope.getdata = function() { 
		var ochart=  {};
		ochart.options = {
		  legend:{position: 'top'},
		  curveType:'function',
		  pointSize: 8,
		  colors:['#428BCA','orange'],
		  width: "80%",
		  height: 500,
		  chartArea:{left:90,top:40,width:"90%",height:"80%"},
		  tooltip: { isHtml: false },
		  bar: { groupWidth: "30%" },
		  hAxis: { format: "QQQ yyyy" }
		};
		ochart.type = "LineChart";
		$scope.chart = ochart;

		$scope.table = {"cols": [
			{id: "date", label: "Date", type: "string"},
			{id: "revenue", label: "Revenue", type: "number"},
			{id: "netIncome", label: "Net Income", type: "number"}
		], "rows": []};

		var dates = {};
		for (var i=0; i<4; i++) {
			for (var j=0; j<4; j++) {
				dates[($scope.endyear - 4 + i) + "Q" + (j + 1)] = {c: [ {v: null}, {v: null}, {v: null} ] };
			}
		}
		$scope.chart.data = $scope.table;

		$http({method: 'GET', url: '/data/dashboard.json'})
			.success(function(data, status, headers, config) {
				data.forEach(function(concept) { 
					concept.conceptValuesByQuarter.forEach(function(item) {
						dates[item.fiscalYear + item.fiscalPeriod].c[0]["v"] = item.fiscalPeriod + " " + item.fiscalYear;
						var index = (concept.conceptName == "fac:netIncome" ? 2 : 1);
						dates[item.fiscalYear + item.fiscalPeriod].c[index]["v"] = item.value;
					});
				});
				$.map(dates, function(element,index) { $scope.table.rows.push(element); });
				$scope.chart.data = $scope.table;
			})
			.error(function(data, status, headers, config) {
				$scope.chart = null;
			});
	};
	if(!$route.current.params.year) { $scope.getdata(); }
};
