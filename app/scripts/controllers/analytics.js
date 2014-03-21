'use strict';

angular.module('main').controller('AnalyticsCtrl', function($scope, $route, $http, $q, $backend, years, periods) {
    $scope.year = ($route.current.params.year ? $route.current.params.year : null);
    $scope.period = ($route.current.params.period ? $route.current.params.period : null);
    $scope.group = ($route.current.params.group ? $route.current.params.group : null);
    $scope.table = null;
    $scope.years = years;
    $scope.periods = periods;

    $scope.change = function(year, period, group) {
        $scope.goto('/analytics/' + year + '/' + period + '/' + group);
    };

    $scope.click = function(item) {
        if ($scope.year) {
            return true;
        }
        return $scope.change($scope.table.rows[item.row].c[0].v, 'FY', 'sector');
    };

    $scope.getdata = function() {
        $scope.chart = {};
        $scope.chart.options = {
            legend: 'none',
            curveType: 'function',
            pointSize: 8,
            interval: {
                'min': {
                    'style': 'bars',
                    'color': '#428BCA',
                    'lineWidth': 1
                },
                'quartile': {
                    'style': 'boxes',
                    'color': '#428BCA',
                    'lineWidth': 1
                },
                'max': {
                    'style': 'bars',
                    'color': '#428BCA',
                    'lineWidth': 1
                },
            },
            colors: ['#428BCA', '#2A6496'],
            width: '80%',
            height: 500,
            chartArea: {
                left: 50,
                top: 30,
                width: '95%',
                height: '85%'
            },
            tooltip: {
                isHtml: true
            },
            bar: {
                groupWidth: '30%'
            },
            vAxis: {
                minValue: 0
            }
        };
        $scope.chart.type = 'LineChart';

        if (!$scope.year) {
            // main chart
            $scope.table = {
                'cols': [
                    {
                        id: 'year',
                        label: 'Year',
                        type: 'string'
                    },
                    {
                        id: 'median',
                        label: 'Median',
                        type: 'number'
                    },
                    {
                        id: 'min',
                        label: 'Min',
                        type: 'number',
                        role: 'interval'
                    },
                    {
                        id: 'quartile',
                        label: 'Lower Quartile',
                        type: 'number',
                        role: 'interval'
                    },
                    {
                        id: 'quartile',
                        label: 'Upper Quartile',
                        type: 'number',
                        role: 'interval'
                    },
                    {
                        id: 'max',
                        label: 'Max',
                        type: 'number',
                        role: 'interval'
                    },
                    {
                        id: '',
                        role: 'tooltip',
                        type: 'string',
                        p: {
                            role: 'tooltip',
                            html: true
                        }
                    }
                ],
                'rows': []
            };

            $scope.chart.data = $scope.table;

            $http({
                method: 'GET',
                url: $backend.API_URL + '/_queries/public/ExtensionPercentUsageStatsByFiscalYear.jq',
                params: { _method: 'POST', domainsAndMembers: [] }
            }).
                success(function(data) {
                    if (data && data.ExtensionUsageStatsByYears) {
                        data.ExtensionUsageStatsByYears.forEach(function(item) {
                            var key = item.fiscalYear;
                            $scope.table.rows.push({
                                c: [
                                    {
                                        v: key
                                    }, {
                                        v: item.median
                                    }, {
                                        v: item.min
                                    }, {
                                        v: item.bottomQuartile
                                    }, {
                                        v: item.topQuartile
                                    }, {
                                        v: item.max
                                    }, {
                                        v: '<dl class="chart-tip"><dt>' + key + '</dt><dd>Minimum: ' + item.min.toFixed(2).toLocaleString() + '%<br>Lower Quartile: ' + item.bottomQuartile.toFixed(2).toLocaleString() + '%<br>Median: ' + item.median.toFixed(2).toLocaleString() + '%<br>Upper Quartile: ' + item.topQuartile.toFixed(2).toLocaleString() + '%<br>Maximum: ' + item.max.toFixed(2).toLocaleString() + '%<br><small>Sample size: ' + item.qty.toLocaleString() + '</small></dd></dl>'
                                    }
                                ]
                            });
                        });
                    }
                    $scope.chart.data = $scope.table;
                }).
                error(function() {
                    $scope.chart = null;
                });
        } else {
            //hide the line (dots only)
            $scope.chart.options.lineWidth = 0;
            $scope.chart.options.chartArea.height = '70%';

            $scope.table = {
                'cols': [
                    {
                        id: 'domain',
                        label: 'Domain',
                        type: 'string'
                    },
                    {
                        id: 'median',
                        label: 'Median',
                        type: 'number'
                    },
                    {
                        id: 'min',
                        label: 'Min',
                        type: 'number',
                        role: 'interval'
                    },
                    {
                        id: 'quartile',
                        label: 'Lower Quartile',
                        type: 'number',
                        role: 'interval'
                    },
                    {
                        id: 'quartile',
                        label: 'Upper Quartile',
                        type: 'number',
                        role: 'interval'
                    },
                    {
                        id: 'max',
                        label: 'Max',
                        type: 'number',
                        role: 'interval'
                    },
                    {
                        id: '',
                        role: 'tooltip',
                        type: 'string',
                        p: {
                            role: 'tooltip',
                            html: true
                        }
                    }
                ],
                'rows': []
            };

            $scope.chart.data = $scope.table;

            $http({
                method: 'GET',
                url: $backend.API_URL + '/_queries/public/ExtensionPercentUsageStatsByDomain.jq',
                params: {
                    _method: 'POST',
                    fiscalYearFocus: $scope.year,
                    fiscalPeriodFocus: $scope.period,
                    domainName: $scope.group,
                    memberSelectionCSV: ''
                }
            }).
                success(function(data) {
                    if (data && data.ExtensionUsageStatsByDomain) {
                        data.ExtensionUsageStatsByDomain.forEach(function(item) {
                            var p1 = item.selector.indexOf('='), p2 = item.selector.length;
                            var key = item.selector.substring(p1 + 1, p2);
                            $scope.table.rows.push({
                                c: [
                                    {
                                        v: key
                                    }, {
                                        v: item.median
                                    }, {
                                        v: item.min
                                    }, {
                                        v: item.bottomQuartile
                                    }, {
                                        v: item.topQuartile
                                    }, {
                                        v: item.max
                                    }, {
                                        v: '<dl class="chart-tip"><dt>' + key + '</dt><dd>Minimum: ' + item.min.toFixed(2).toLocaleString() + '%<br>Lower Quartile: ' + item.bottomQuartile.toFixed(2).toLocaleString() + '%<br>Median: ' + item.median.toFixed(2).toLocaleString() + '%<br>Upper Quartile: ' + item.topQuartile.toFixed(2).toLocaleString() + '%<br>Maximum: ' + item.max.toFixed(2).toLocaleString() + '%<br><small>Sample size: ' + item.qty.toLocaleString() + '</small></dd></dl>'
                                    }
                                ]
                            });
                        });
                    }
                    $scope.chart.data = $scope.table;
                }).
                error(function() {
                    $scope.chart = null;
                });
        }
    };

    $scope.getdata();
}
);
