'use strict';

angular.module('main')
.controller('CompanyCtrl', function($scope, $route, $http) {
    $scope.section = ($route.current.params.section || 'about');
    $scope.contacted = false;
    $scope.close = function() {
        $scope.contacted = false;
    };

    $scope.submit = function(){
        if(!$scope.$$childHead.contactus.$invalid) {
            $http({
                url: 'http://contact.28.io/support.jq',
                data: { name: $scope.$$childHead.name, email: $scope.$$childHead.email, subject: $scope.$$childHead.subject, message: $scope.$$childHead.message },
                method : 'POST',
                headers : {'Content-Type':'application/x-www-form-urlencoded; charset=UTF-8'},
                transformRequest: function(obj) {
                    var str = [];
                    for(var p in obj) {
                        str.push(encodeURIComponent(p) + '=' + encodeURIComponent(obj[p]));
                    }
                    return str.join('&');
                }
            }).success(function(){
                $scope.contacted = true;
            });
        }
    };
});
