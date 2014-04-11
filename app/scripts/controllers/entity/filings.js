'use strict';

angular.module('main')
.controller('FilingsCtrl', function($scope, $stateParams, filings) {
    $scope.filings = filings.Archives;
});
