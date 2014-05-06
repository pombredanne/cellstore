'use strict';

angular.module('scroll-id', [])
.directive('scrollId', function ($window) {
    return function (scope, element, attributes) {
        scope.$on('scroll-id', function(event, id) {
            if (id === attributes.scrollId) {
                $window.scrollTo(element[0].getBoundingClientRect().left , element[0].getBoundingClientRect().top);
            }
        });
	};
});