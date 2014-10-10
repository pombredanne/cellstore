'use strict';

angular
.module('secxbrl')
.directive('resize', function($window){
    return {
        restrict: 'A',
        link: function($scope){
            angular.element($window).bind('resize', function () {
                $scope.$apply();
            });
        }    
    };
})
;
