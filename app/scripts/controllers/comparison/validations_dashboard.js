'use strict';

/*globals accounting*/

angular.module('main')
.controller('ComparisonValidationsDashboardCtrl', function($scope, $location, $state, $backend, informations) {
    $scope.showtab = [];
    $scope.reports = [];
    $scope.reportname = 'FundamentalAccountingConcepts';
    $scope.filings = null;
    $scope.errornoresults = false;
    $scope.errormany = false;
    
    if (informations.data && informations.filings)
    {
        if (informations.filings.length > 30)
        {
            $scope.errormany = true;
        }
        else
        {
            if (informations.data.length === 0)
            {
                $scope.errornoresults = true;
            }
            else
            {
                $scope.filings = informations.filings;
                $scope.params = {
                    _method: 'POST',
                    aid: $scope.filings,
                    report: 'FundamentalAccountingConcepts',
                    'token' : $scope.token
                };
                for (var i = 0; i < informations.data.length; i++)
                {
                    var root =
                        informations.data[i].Trees['fac:FundamentalAccountingConceptsLineItems']
                        .To['fac:FundamentalAccountingConceptsHierarchy'].To;

                    var report = {};
                    report.generator = informations.data[i].Generator;
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
                            detail.Id = fact.AuditTrails[0].Id;
                        }
                        details.push(detail);
                    }//for
                    report.details = details;

                    $scope.reports.push(report);
                    // tab should be closed
                    $scope.showtab.push(false);
                }//for
            }
        }
    }

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

    $scope.showAudit = function(passed, message) {
        $scope.$emit('alert', '<small><i class="fa semaphore ' + (passed ? 'fa-check-circle success' : 'fa-exclamation-triangle') + '"></i></small> ' + (passed ? 'Rule passed' : 'Rule failed'), '<samp class="small">' + message + '</samp>');
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
