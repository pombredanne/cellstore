'use strict';

angular.module('main')
.controller('AdminUsageCtrl', function($scope, apiStatistics) {
    $scope.data = apiStatistics.data;
});
