'use strict';

angular.module('document-click', [])
  .directive('onDocumentClick', ['$document',
	  function ($document) {
		return {
		  restrict: 'A',
		  link: function ($scope, $element, $attributes) {
			$document.on("click", function ($event) {
				$scope.$eval($attributes.onDocumentClick, { "$event" : $event, "$element": $element });
			});
		  }
		};
	  }]);
