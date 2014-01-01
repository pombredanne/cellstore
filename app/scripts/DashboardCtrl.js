'use strict';

function DashboardCtrl($scope, $rootScope, $location, $route, $http, API_URL, LAST_YEAR)
{
    $scope.table = null;
    $scope.year = ($route.current.params.year ? $route.current.params.year : null);
    $scope.period = ($route.current.params.period ? $route.current.params.period : null);
    $scope.cik = ($route.current.params.cik ? $route.current.params.cik : null);
    $scope.secondtab = ($route.current.params.year ? true : false);
    $scope.showtab0 = true;
    $scope.generalInfo = [];
    $scope.balanceSheet = [];
    $scope.incomeStatement = [];
    $scope.cashFlowStatement = [];
    $scope.keyRatios = [];

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

        $scope.httpDates = {};
        for (
            var i = 0; i < 4; i++)
        {
            for (
                var j = 0; j < 4; j++)
            {
                $scope.httpDates[(LAST_YEAR - 4 + i) + "Q" + (j + 1)] = {c: [
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
						if (date)
						{
							date.c[0]["v"] = p + " " + itemRev.fiscalYear;
							date.c[1]["v"] = itemRev.value;
						}
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
						if (date)
						{
							date.c[0]["v"] = p + " " + itemInc.fiscalYear;
							date.c[2]["v"] = itemInc.value;
						}
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
							if (list[key]["Facts"])
								if (list[key]["Facts"][0]["Type"] == "NumericValue")
									item.value = parseFloat(list[key]["Facts"][0]["Value"]).toLocaleString();
								else
									item.value = list[key]["Facts"][0]["Value"];
							else 
								item.value = "";
							item.audit = list[key]["Name"] ? list[key]["Name"] : "";
							array.push(item);
						}
					}
				};

				prepareReport(root["fac:GeneralInformationHierarchy"]["To"], $scope.generalInfo);
				prepareReport(root["fac:BalanceSheetHierarchy"]["To"], $scope.balanceSheet);
				prepareReport(root["fac:IncomeStatementHierarchy"]["To"], $scope.incomeStatement);
				prepareReport(root["fac:CashFlowStatementHierarchy"]["To"], $scope.cashFlowStatement);
				prepareReport(root["fac:KeyRatiosHierarchy"]["To"], $scope.keyRatios);

            }
        )
		.error(function (data, status, headers, config)
		{
			$scope.generalInfo = [];
			$scope.balanceSheet = [];
			$scope.incomeStatement = [];
			$scope.cashFlowStatement = [];
			$scope.keyRatios = [];
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
