'use strict';

angular.module('main')
.directive('ogTitle', function(){
    return {
        restrict: 'A',
        link: function($scope, element){
            $scope.$on('$setTitle', function(event, title){
                element.attr('content', 'secxbrl.info - ' + title);
            });
        }
    };
})
.directive('ogType', function(){
    return {
        restrict: 'A',
        link: function($scope, element){
            $scope.$on('$setOgType', function(event, type){
                element.attr('content', type);
            });
        }
    };
})
.directive('ogUrl', function($rootScope, $location){
    return {
        restrict: 'A',
        link: function($scope, element){
            $rootScope.$on('$stateChangeStart', function(){
                element.attr('content', 'http://28.io' + $location.path());
            });
        }
    };
})
.directive('ogImage', function(){
    return {
        restrict: 'A',
        link: function($scope, element){
            $scope.$on('$setOgImage', function(event, image){
                element.attr('content', 'http://28.io' + image);
            });
        }
    };
})
.directive('title', function(){
    return {
        restrict: 'E',
        link: function($scope, element){
            $scope.$on('$setTitle', function(event, title){
                element.text('secxbrl.info - ' + title);
            });
        }
    };
})
.controller('HeadCtrl', function($scope) {

    $scope.$on('$stateChangeStart', function(event, next) {
        console.log(next);
        var title = (next.data && next.data.title) ? next.data.title : 'US Public Company Financial Information Repository';
        $scope.$broadcast('$setTitle', title);
    });
});