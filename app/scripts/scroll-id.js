'use strict';

angular.module('scroll-id', [])
.directive('scrollId', function () {
	return function (scope, element, attributes) {
	  scope.$on('scroll-id', function(event, id) {
		  if (id == attributes.scrollId) {
			window.scrollTo(0, element[0].getBoundingClientRect().top)
		  }
		});
	}
});