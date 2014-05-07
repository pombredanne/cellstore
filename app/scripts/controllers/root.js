'use strict';

angular.module('main')
.controller('RootCtrl', function($scope){
    $scope.$on('$stateChangeSuccess', function(event, toState) {
        $scope.active = toState.data && toState.data.active;
    });

    $scope.doLogout = function() {
        $scope.$emit('logout');
    };

    $scope.doAuth = function() {
        $scope.$emit('auth');
    };
})
.controller('RootFilingCtrl', function($state, $stateParams, $location, filing){
    var cik = filing.Archives[0].CIK.substring('http://www.sec.gov/CIK'.length + 1);
    //This state is a redirect
    $state.go('root.entity.filing', { cik: cik, aid: $stateParams.aid });
    $location.replace();
})
.controller('RootComponentsCtrl', function($state, $stateParams, $location, components){
    var cik = components.Archives[0].CIK.substring('http://www.sec.gov/CIK'.length + 1);
    //This state is a redirect
    $state.go('root.entity.components', { cik: cik, aid: $stateParams.aid });
    $location.replace();
})
.controller('RootComponentCtrl', function($state, $stateParams, $location, component) {
    var cik = component.Archives[0].CIK.substring('http://www.sec.gov/CIK'.length + 1);
    var aid = $stateParams.aid;
    var networkIdentifier = $stateParams.networkIdentifier;
    //This state is a redirect
    $state.go('root.entity.component', { cik: cik, aid: aid, networkIdentifier: networkIdentifier });
    $location.replace();
})
.controller('RootFactTableCtrl', function($state, $stateParams, $location, facttable){
    var cik = facttable.CIK.substring('http://www.sec.gov/CIK'.length + 1);
    var aid = $stateParams.aid;
    var networkIdentifier = $stateParams.networkIdentifier;
    //This state is a redirect
    $state.go('root.entity.facttable', { cik: cik, aid: aid, networkIdentifier: networkIdentifier });
    $location.replace();
})
.controller('RootModelStructureCtrl', function($state, $stateParams, $location, modelStructure){
    var cik = modelStructure.CIK.substring('http://www.sec.gov/CIK'.length + 1);
    var aid = $stateParams.aid;
    var networkIdentifier = $stateParams.networkIdentifier;
    //This state is a redirect
    $state.go('root.entity.modelstructure', { cik: cik, aid: aid, networkIdentifier: networkIdentifier });
    $location.replace();
})
;