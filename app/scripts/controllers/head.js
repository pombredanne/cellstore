'use strict';

angular.module('main')
.directive('ogTitle', function(){
    return {
        restrict: 'A',
        link: function($scope, element){
            $scope.$on('$setTitle', function(event, title){
                element.attr('content', title);
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
            $rootScope.$on('$routeChangeStart', function(){
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
                element.text(title);
            });
        }
    };
})
.controller('HeadCtrl', function($scope) {

    $scope.$on('$routeChangeStart', function(event, next) {
        var title = (next.$$route && next.$$route.title) ? next.$$route.title : 'secxbrl.info - US Public Company Financial Information Repository';
        $scope.$broadcast('$setTitle', title);
    });
});
