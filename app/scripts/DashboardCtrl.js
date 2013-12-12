'use strict';

function DashboardCtrl($scope, $location, $route, $http)
{
    $scope.text = "";
    $scope.table = null;
    $scope.endyear = 2014;
    $scope.year = ($route.current.params.year ? $route.current.params.year : null);
    $scope.period = ($route.current.params.period ? $route.current.params.period : null);
    $scope.secondtab = ($route.current.params.year ? true : false);
    $scope.showtab0 = true;
    $scope.generalInfo = [];
    $scope.balanceSheet = [];
    $scope.incomeStatement = [];
    $scope.cashFlowStatement = [];
    $scope.keyRatios = [];

    $scope.change = function (year, period)
    {
        $location.path("/dashboard/" + year + "/" + period);
        $scope.safeApply();
    };

    $scope.settab = function (tab)
    {
        if (tab == 0)
        {
            if ($route.current.params.year)
            {
                $location.path("/dashboard");
                $scope.safeApply();
            }
        }
        else if (!$route.current.params.year)
        {
            $scope.change($scope.endyear - 1, "FY");
        }
    };

    $scope.getdata = function ()
    {
        var ochart = {};
        ochart.options = {
            legend: {position: 'top'},
            curveType: 'function',
            pointSize: 8,
            colors: ['#428BCA', 'orange'],
            width: "80%",
            height: 500,
            chartArea: {left: 90, top: 40, width: "90%", height: "80%"},
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
        for (
            var i = 0; i < 4; i++)
        {
            for (
                var j = 0; j < 4; j++)
            {
                dates[($scope.endyear - 4 + i) + "Q" + (j + 1)] = {c: [
                    {v: null},
                    {v: null},
                    {v: null}
                ] };
            }
        }
        $scope.chart.data = $scope.table;

        $http({method: 'GET', url: '/data/dashboard.json'})
            .success(function (data, status, headers, config)
            {
                data.forEach(function (concept)
                {
                    concept.conceptValuesByQuarter.forEach(function (item)
                    {
                        dates[item.fiscalYear + item.fiscalPeriod].c[0]["v"] = item.fiscalPeriod + " " + item.fiscalYear;
                        var index = (concept.conceptName == "fac:netIncome" ? 2 : 1);
                        dates[item.fiscalYear + item.fiscalPeriod].c[index]["v"] = item.value;
                    });
                });
                $.map(dates, function (element, index)
                {
                    $scope.table.rows.push(element);
                });
                $scope.chart.data = $scope.table;
            })
            .error(function (data, status, headers, config)
            {
                $scope.chart = null;
            });
    };

    $scope.getComponent = function ()
    {
        $http({method: 'GET', url: '/data/concept.json'})
            .success(function (data, status, headers, config)
            {
                var entity = [data.entity, data.filing];
                var balanceSheet = data.components["balance-sheet"];
                var incomeStatement = data.components["income-statement"];
                var cashFlowStatement = data.components["cash-flow-statement"];
                var keyRatios = data.verification["key-ratios"];
                var item;
                var items = [];

                entity.forEach(function (concept)
                {
                    for (var key in concept)
                    {
                        if (concept[key].value == undefined)
                        {
                            continue;
                        }
                        item = {};
                        item.label = key.replace(/([a-z])([A-Z])/g, '$1 $2');
                        item.value = concept[key].value;
                        item.hasWarning = false;
                        item.type = "Reported";
                        item.audit = concept[key].concept;

                        items.push(item);
                    }

                })
                $scope.generalInfo = items;

                items = [];
                for (var key in balanceSheet)
                {
                    if (key == "format")
                    {
                        continue;
                    }
                    item = {};
                    item.label = key.replace(/([a-z])([A-Z])/g, '$1 $2');
                    item.value = !isNaN(balanceSheet[key].value) ? parseInt(balanceSheet[key].value) > 0 ? parseInt(balanceSheet[key].value).toLocaleString() : 0 : balanceSheet[key].value;

                    if (!balanceSheet[key].imputed)
                    {
                        item.type = "Reported";
                        item.audit = balanceSheet[key].concept;
                    }
                    else
                    {
                        item.type = "Imputed";
                        item.audit = balanceSheet[key].rules["audit-trail"];
                    }

                    if (balanceSheet[key]["validation-rules"] != undefined)
                    {
                        var validRules = [];
                        if (balanceSheet[key]["validation-rules"].length == undefined)
                        {
                            if (balanceSheet[key]["validation-rules"]["rule-passed"] == "true")
                            {
                                item.hasWarning = false;
                            }
                            else
                            {
                                item.hasWarning = true;
                            }
                        }
                        else
                        {
                            balanceSheet[key]["validation-rules"].filter(function (rule)
                            {
                                if (rule["rule-passed"] == "true")
                                {
                                    validRules.push(true);
                                }
                            })

                            if (validRules.length == balanceSheet[key]["validation-rules"].length)
                            {
                                item.hasWarning = false;
                            }
                            else
                            {
                                item.hasWarning = true;
                            }
                        }
                    }
                    else
                    {
                        item.hasWarning = false;
                    }
                    if (key == "BalanceSheetDate")
                        $scope.generalInfo.push(item);
                    else
                        items.push(item);


                }
                $scope.balanceSheet = items;

                items = [];
                for (var key in incomeStatement)
                {
                    if (key == "format" || key == "IncomeStatementStartPeriod")
                    {
                        continue;
                    }
                    item = {};
                    item.label = key.replace(/([a-z])([A-Z])/g, '$1 $2');
                    item.value = !isNaN(incomeStatement[key].value) ? parseInt(incomeStatement[key].value) > 0 ? parseInt(incomeStatement[key].value).toLocaleString() : 0 : incomeStatement[key].value;

                    if (!incomeStatement[key].imputed)
                    {
                        item.type = "Reported";
                        item.audit = incomeStatement[key].concept;
                    }
                    else
                    {
                        item.type = "Imputed";
                        item.audit = incomeStatement[key].rules["audit-trail"];
                    }

                    if (incomeStatement[key]["validation-rules"] != undefined)
                    {
                        var validRules = [];
                        if (incomeStatement[key]["validation-rules"].length == undefined)
                        {
                            if (incomeStatement[key]["validation-rules"]["rule-passed"] == "true")
                            {
                                item.hasWarning = false;
                            }
                            else
                            {
                                item.hasWarning = true;
                            }
                        }
                        else
                        {
                            incomeStatement[key]["validation-rules"].filter(function (rule)
                            {
                                if (rule["rule-passed"] == "true")
                                {
                                    validRules.push(true);
                                }
                            })

                            if (validRules.length == incomeStatement[key]["validation-rules"].length)
                            {
                                item.hasWarning = false;
                            }
                            else
                            {
                                item.hasWarning = true;
                            }
                        }
                    }
                    else
                    {
                        item.hasWarning = false;
                    }

                    items.push(item);


                }
                $scope.incomeStatement = items;

                items = [];
                for (var key in cashFlowStatement)
                {
                    item = {};
                    item.label = key.replace(/([a-z])([A-Z])/g, '$1 $2');
                    item.value = !isNaN(cashFlowStatement[key].value) ? parseInt(cashFlowStatement[key].value) > 0 ? parseInt(cashFlowStatement[key].value).toLocaleString() : 0 : cashFlowStatement[key].value;

                    if (!cashFlowStatement[key].imputed)
                    {
                        item.type = "Reported";
                        item.audit = cashFlowStatement[key].concept;
                    }
                    else
                    {
                        item.type = "Imputed";
                        item.audit = cashFlowStatement[key].rules["audit-trail"];
                    }

                    if (cashFlowStatement[key]["validation-rules"] != undefined)
                    {
                        var validRules = [];
                        if (cashFlowStatement[key]["validation-rules"].length == undefined)
                        {
                            if (cashFlowStatement[key]["validation-rules"]["rule-passed"] == "true")
                            {
                                item.hasWarning = false;
                            }
                            else
                            {
                                item.hasWarning = true;
                            }
                        }
                        else
                        {
                            cashFlowStatement[key]["validation-rules"].filter(function (rule)
                            {
                                if (rule["rule-passed"] == "true")
                                {
                                    validRules.push(true);
                                }
                            })

                            if (validRules.length == cashFlowStatement[key]["validation-rules"].length)
                            {
                                item.hasWarning = false;
                            }
                            else
                            {
                                item.hasWarning = true;
                            }
                        }
                    }
                    else
                    {
                        item.hasWarning = false;
                    }

                    items.push(item);


                }
                $scope.cashFlowStatement = items;

                items = [];
                for (var key in keyRatios)
                {
                    item = {};
                    item.label = key.replace(/([a-z])([A-Z])/g, '$1 $2');
                    item.value = !isNaN(keyRatios[key].value) ? parseFloat(keyRatios[key].value) != 0 ? parseFloat(keyRatios[key].value).toLocaleString() : 0 : keyRatios[key].value;

                    if (!keyRatios[key].imputed)
                    {
                        item.type = "Reported";
                        item.audit = keyRatios[key].concept;
                    }
                    else
                    {
                        item.type = "Imputed";
                        item.audit = keyRatios[key].rules["audit-trail"];
                    }

                    if (keyRatios[key]["passed"] != 'true')
                    {
                        item.hasWarning = true;
                    }
                    else
                    {
                        item.hasWarning = false;
                    }

                    items.push(item);


                }
                $scope.keyRatios = items;
                items = [];
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
    if (!$route.current.params.year)
    {
        $scope.getdata();
    }
    else
    {
        $scope.getComponent();
    }
}
;
