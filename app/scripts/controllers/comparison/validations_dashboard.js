'use strict';

/*globals accounting*/

angular.module('main')
.controller('ComparisonValidationsDashboardCtrl', function($scope, $http, $location, $state, $backend) {
    $scope.showtab = [];
    $scope.reports = [];
    $scope.reportname = 'FundamentalAccountingConcepts';
    $scope.filings = null;
    $scope.error = false;
    $scope.errornoresults = false;
    $scope.errormany = false;
    
    $scope.service.listFilings({
        $method: 'POST',
        cik: $scope.selection.cik,
        tag: $scope.selection.tag,
        fiscalYear: $scope.selection.fiscalYear,
        fiscalPeriod: $scope.selection.fiscalPeriod,
        sic: $scope.selection.sic,
        token: $scope.token
    }).then(function(data) {
        $scope.filings = [];
        data.Archives.forEach(function(a) { $scope.filings.push(a.AccessionNumber); });
        if ($scope.filings.length === 0) {
            $scope.reports = [];
            $scope.errornoresults = true;
        }
        else {
            if ($scope.filings.length > 30 && !$scope.nomany) {
                $scope.reports = [];
                $scope.errormany = true;
            } else {
                $scope.getInfo();
            }
        }
    },
    function(response) {
        $scope.$emit('error', response.status, response.data);
    });

    $scope.getInfo = function() {
        $scope.reports = [];
        $scope.params = {
                _method: 'POST',
                aid: $scope.filings,
                fiscalYear : $scope.selection.fiscalYear,
                fiscalPeriod : $scope.selection.fiscalPeriod,
                report: 'FundamentalAccountingConcepts',
                'token' : $scope.token
            };
        var promiseResponse = $backend.getFactsForReport($scope.params);
        promiseResponse.then(
            $scope.prepareReportForUI,
            function (data, status) {
                if (status === 401) {
                    $scope.error = true;
                } else {
                    $scope.$emit('error', status, data);
                }
            }
        );
    };

    $scope.prepareReportForUI = function(data) {
        $scope.reports = [];
        $scope.showtab = [];

        for (var i = 0; i < data.length; i++)
        {
            var root =
                data[i].Trees['fac:FundamentalAccountingConceptsLineItems']
                .To['fac:FundamentalAccountingConceptsHierarchy'].To;

            var report = {};
            report.generator = data[i].Generator;
            report.entity =
                root['fac:GeneralInformationHierarchy']
                .To['fac:EntityRegistrantName'].Facts[0].Value;
            report.cik =
                root['fac:GeneralInformationHierarchy']
                .To['fac:EntityCentralIndexKey'].Facts[0].Value;
            report.period =
                root['fac:GeneralInformationHierarchy']
                .To['fac:FiscalPeriod'].Facts[0].Value;
            report.year =
                root['fac:GeneralInformationHierarchy']
                .To['fac:FiscalYear'].Facts[0].Value;
            report.passed =
                root['fac:ValidationStatistics']
                .To['fac:PassedValidations'].Facts[0].Value;
            report.passed = report.passed ? parseInt(report.passed) : 0;
            report.failed =
                root['fac:ValidationStatistics']
                .To['fac:FailedValidations'].Facts[0].Value;
            report.failed = report.failed ? parseInt(report.failed) : 0;
            report.notApplicable =
                root['fac:ValidationStatistics']
                .To['fac:NotApplicableValidations'].Facts[0].Value;
            report.notApplicable = report.notApplicable ? parseInt(report.notApplicable) : 0;
            
            var valCount = report.passed + report.failed;
            report.percentage = null;
            if (valCount > 0){
                report.percentage = report.passed / valCount * 100;
                report.successRate = accounting.formatNumber(report.percentage, 2);
            }

            var validations =
                root['fac:Validations'].To;
            var details = [];
            for (var key in validations) {
                var detail = {};
                detail.name = validations[key].Name;
                detail.label = validations[key].Label;
                if(validations[key].Facts.length === 0)
                {
                    detail.skipped = true;
                }else{
                    var fact = validations[key].Facts[0];
                    detail.passed = fact.Value;
                    detail.message = fact.AuditTrails[0].Message;
                }
                details.push(detail);
            }//for
            report.details = details;

            $scope.reports.push(report);
            // tab should be closed
            $scope.showtab.push(false);
        }//for

        $scope.error = false;
        $scope.errormany = false;
        $scope.errornoresults = ($scope.reports.length === 0);
    };

    $scope.forceShow = function() {
        $scope.nomany=true;
        $scope.getInfo();
    };

    $scope.drill = function(cik, year, period) {
        $state.go('root.entity.information', { cik: cik, year: year, period: period });
    };

    $scope.isBlock = function(string) {
        if (!string) {
            return false;
        }
        return string.length > 60;
    };

    $scope.showText = function(html) {
        $scope.$emit('alert', 'Text Details', html);
    };

    $scope.getUrl = function(format) {
        var str = $backend.API_URL + '/_queries/public/api/facts.jq';
        var params = angular.copy($scope.params);
        if (params) {
            params.cik = $scope.selection.cik;
            params.tag = $scope.selection.tag;
            params.sic = $scope.selection.sic;
            params.concept = ['fac:PassedValidations', 'fac:FailedValidations', 'fac:NotApplicableValidations'];
            params.map = $scope.reportname;
            params.rules = $scope.reportname;
        }
        if (format) {
            params.format = format;
        }
        var qs = $scope.wwwFormUrlencoded(params);
        if (qs) {
            str += '?' + qs;
        }
        return str;
    };
});
