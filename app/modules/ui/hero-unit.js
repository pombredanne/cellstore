'use strict';

angular
.module('secxbrl')
.directive('heroUnit', function($window, $rootScope){

        var onScroll = function(event, toState) {
            var top = document.body.getBoundingClientRect().top;
            if(top >= 0 && ((document.getElementById('home') !== null && !toState) || (toState && toState.name === 'home.start'))) {
                document.querySelector('nav.navbar').classList.add('transparent');
            } else {
                document.querySelector('nav.navbar').classList.remove('transparent');
            }
        };

        angular.element($window).bind("scroll", onScroll);
        onScroll();
        $rootScope.$on('$stateChangeSuccess', onScroll);

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

        w.bind('resize', function () {
            $scope.$apply();
        });


    };
})
;

