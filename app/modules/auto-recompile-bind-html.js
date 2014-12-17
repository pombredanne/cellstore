'use strict';

angular
    .module('report-editor')
    .directive('autoRecompileBindHtml', function($compile, $parse){
        return {
            link: function($scope, element, attr){
                // Recompile the ng bind html
                $scope.$watch(function() {
                    var parsed = $parse(attr.ngBindHtml);
                    var val = parsed($scope) || '';
                    return val.toString();
                }, function() {
                    $compile(element, null, -9999 /*skip directives*/)($scope);
                });
            }
        };
    })
;
