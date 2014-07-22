'use strict';

angular.module('main')
.controller('SpreadsheetCtrl', function($rootScope, $scope, $stateParams, $backend, component, spreadsheet) {
    
	$scope.mymodel = spreadsheet;
	$scope.myheaders = [ { label:"", value:spreadsheet.TableSetLabels[0] }];
	  
	$scope.preview = { constraints : false, checks : true, css : 'preview-style', labelidx : 0 };
	  		  		  		
	$scope.archive = component.Archives[0];
	$scope.component = $scope.archive.Components[0];
	 
    $scope.aid = $stateParams.aid;
    $scope.networkIdentifier = $stateParams.networkIdentifier;
    $scope.cik = $stateParams.cik;
    
    var p = $scope.component.NetworkLabel.lastIndexOf(' - ');
    if (p > 0) {
        $scope.NetworkLabel = $scope.component.NetworkLabel.substring(p + 3);
    } else {
        $scope.NetworkLabel = $scope.component.NetworkLabel;
    }
    
    $scope.getExportURL = function(format) {
 	   return $backend.API_URL + '/_queries/public/api/spreadsheet-for-component.jq?_method=POST&eliminate=true&validate=' + ( $scope.preview.checks ? 'true' : 'false' ) + '&format=' + format + '&aid=' + $stateParams.aid + '&networkIdentifier=' + encodeURIComponent($stateParams.networkIdentifier) + '&token=' + $rootScope.token;
 	};
    
});
