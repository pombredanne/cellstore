'use strict';

function AnalyticsCtrl($scope, $location, $route, $http) {
	$scope.year = ($route.current.params.year ? $route.current.params.year : null);
	$scope.period = ($route.current.params.period ? $route.current.params.period : null);
	$scope.group = ($route.current.params.group ? $route.current.params.group : null);
	$scope.table = null;

	$scope.change = function(year, period, group) {
		$location.path("/analytics/" + year + "/" + period + "/" + group);
		$scope.safeApply();
	};
	$scope.click = function(item) {
		if ($scope.year) return;
		return $scope.change($scope.table.rows[item.row].c[0].v, "FY", "filer");
	};

	$scope.getdata = function() { 
		var ochart=  {};
		ochart.options = {
		  legend:'none',
		  curveType:'function',
		  pointSize: 8,
		  interval: {
            'min': { 'style':'bars', 'color':'#428BCA', 'lineWidth': 1 },
            'quartile': { 'style':'boxes', 'color':'#428BCA', 'lineWidth': 1 },
            'max': { 'style':'bars', 'color':'#428BCA', 'lineWidth': 1 },
          },
		  colors:['#428BCA','#2A6496'],
		  width: "80%",
		  height: 500,
		  chartArea:{left:30,top:10,width:"90%",height:"80%"},
		  tooltip: { isHtml: true },
		  bar: { groupWidth: "30%" }
		};
		ochart.type = "LineChart";
		$scope.chart = ochart;

		if (!$scope.year)
		{
			// main chart
			$scope.table = {"cols": [
				{id: "year", label: "Year", type: "string"},
				{id: "median", label: "Median", type: "number"},
				{id: "min", label: "Min", type: "number", role: 'interval'},
				{id: "quartile", label: "Lower Quartile", type: "number", role: 'interval'},
				{id: "quartile", label: "Upper Quartile", type: "number", role: 'interval'},
				{id: "max", label: "Max", type: "number", role: 'interval'},
				{id: "", role: "tooltip", type: "string", p: { role: "tooltip", html: true } }
			], "rows": []};

			$scope.chart.data = $scope.table;

			$http({method: 'GET', url: '/data/data.json'}).
				success(function(data, status, headers, config) {
					data.percentUsageStatsByYear.forEach(function(item) { 
						$scope.table.rows.push({c: [ {v: item.fiscalYear}, {v: item.median}, {v: item.min}, {v: item.bottomQuartile}, {v: item.topQuartile}, {v: item.max}, {v: "<dl class='charttip'><dt>" + item.fiscalYear + "</dt><dd>Minimum: " + item.min + "<br>Lower Quartile: " + item.bottomQuartile + "<br>Median: " + item.median + "<br>Upper Quartile: " + item.topQuartile + "<br>Maximum: " + item.max + "</dd></dl>" } ]});
					});

					$scope.chart.data = $scope.table;
				}).
				error(function(data, status, headers, config) {
					$scope.chart = null;
				});
		}
		else
		{
			$scope.table = {"cols": [
				{id: "domain", label: "Domain", type: "string"},
				{id: "median", label: "Median", type: "number"},
				{id: "min", label: "Min", type: "number", role: 'interval'},
				{id: "quartile", label: "Lower Quartile", type: "number", role: 'interval'},
				{id: "quartile", label: "Upper Quartile", type: "number", role: 'interval'},
				{id: "max", label: "Max", type: "number", role: 'interval'},
				{id: "", role: "tooltip", type: "string", p: { role: "tooltip", html: true } }
			], "rows": []};

			$scope.chart.data = $scope.table;

			$http({method: 'GET', url: '/data/details-' + $scope.group + '.json'}).
				success(function(data, status, headers, config) {
					data.percentUsageStatsByDomain.forEach(function(item) { 
						$scope.table.rows.push({c: [ {v: item.members}, {v: item.median}, {v: item.min}, {v: item.bottomQuartile}, {v: item.topQuartile}, {v: item.max}, {v: "<dl class='charttip'><dt>" + item.members + "</dt><dd>Minimum: " + item.min + "<br>Lower Quartile: " + item.bottomQuartile + "<br>Median: " + item.median + "<br>Upper Quartile: " + item.topQuartile + "<br>Maximum: " + item.max + "</dd></dl>" } ]});
					});

					$scope.chart.data = $scope.table;
				}).
				error(function(data, status, headers, config) {
					$scope.chart = null;
				});
		}
	};
	$scope.getdata();
};
