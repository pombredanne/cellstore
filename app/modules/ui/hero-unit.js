'use strict';

angular
.module('secxbrl')
.directive('heroUnit', function($window){
    return function($scope, $element){
        var w = angular.element($window);

        $scope.getWindowDimensions = function () {
            var a = $window.document.documentElement.clientHeight;
            var b = $window.innerHeight;
            return a < b ? b : a;
        };

        $scope.$watch($scope.getWindowDimensions, function (newValue) {
            $element[0].style.height = newValue + 'px';
            var title = document.querySelector('.title');
            var titleH = title.getBoundingClientRect().height;
            title.style.marginTop = ((newValue - titleH) / 2) + 'px';

        });
/*
        angular.element($window).bind("scroll", function() {
            var top = document.body.getBoundingClientRect().top;
            console.log(top);
            if(top >= 0) {
                document.querySelector('nav.navbar').classList.add('transparent');
            } else {
                document.querySelector('nav.navbar').classList.remove('transparent');
            }
        });
*/
        w.bind('resize', function () {
            $scope.$apply();
        });


    };
})
;

