'use strict';

angular.module('main')
.controller('RootCtrl', function($scope){
    $scope.selection = {};

    $scope.$on('$stateChangeSuccess', function(event, toState) {
        $scope.active = toState.data && toState.data.active;
    });

    $scope.doLogout = function(e) {
        if (e)
        {
            e.preventDefault();
        }
        $scope.$emit('logout');
    };

    $scope.doAuth = function(e) {
        if (e)
        {
            e.preventDefault();
        }
        $scope.$emit('auth');
    };

    $scope.$on('SelectionChanged', function(event, selection) {
        $scope.selection = selection;
    });
})
.controller('RootFilingCtrl', function($state, $stateParams, $location, filing){
<<<<<<< HEAD
    var cik = filing.Archives[0].CIK.substring('http://www.sec.gov/CIK'.length + 1);
=======
    filing = filing.data;
    var rut = filing.Archives[0].RUT.substring('http://www.svs.cl/rut'.length + 1);
>>>>>>> cik/CIK -> rut/RUT
    //This state is a redirect
    $state.go('root.entity.filing', { rut: rut, aid: $stateParams.aid });
    $location.replace();
})
.controller('RootComponentsCtrl', function($state, $stateParams, $location, components){
<<<<<<< HEAD
    var cik = components.Archives[0].CIK.substring('http://www.sec.gov/CIK'.length + 1);
=======
    components = components.data;
    var rut = components.Archives[0].RUT.substring('http://www.svs.cl/rut'.length + 1);
>>>>>>> cik/CIK -> rut/RUT
    //This state is a redirect
    $state.go('root.entity.components', { rut: rut, aid: $stateParams.aid });
    $location.replace();
})
.controller('RootComponentCtrl', function($state, $stateParams, $location, component) {
<<<<<<< HEAD
    var cik = component.Archives[0].CIK.substring('http://www.sec.gov/CIK'.length + 1);
=======
    var rut = component.data.Archives[0].RUT.substring('http://www.svs.cl/rut'.length + 1);
>>>>>>> cik/CIK -> rut/RUT
    var aid = $stateParams.aid;
    var networkIdentifier = $stateParams.networkIdentifier;
    //This state is a redirect
    $state.go('root.entity.component', { rut: rut, aid: aid, networkIdentifier: networkIdentifier });
    $location.replace();
})
.controller('RootFactTableCtrl', function($state, $stateParams, $location, facttable){
<<<<<<< HEAD
    var cik = facttable.CIK.substring('http://www.sec.gov/CIK'.length + 1);
=======
    var rut = facttable.RUT.substring('http://www.svs.cl/rut'.length + 1);
>>>>>>> cik/CIK -> rut/RUT
    var aid = $stateParams.aid;
    var networkIdentifier = $stateParams.networkIdentifier;
    //This state is a redirect
    $state.go('root.entity.facttable', { rut: rut, aid: aid, networkIdentifier: networkIdentifier });
    $location.replace();
})
.controller('RootSpreadsheetCtrl', function($state, $stateParams, $location, component){
	var cik = component.Archives[0].CIK.substring('http://www.sec.gov/CIK'.length + 1);
    var aid = $stateParams.aid;
    var networkIdentifier = $stateParams.networkIdentifier;
    //This state is a redirect
    $state.go('root.entity.spreadsheet', { cik: cik, aid: aid, networkIdentifier: networkIdentifier });
    $location.replace();
})
.controller('RootModelStructureCtrl', function($state, $stateParams, $location, modelStructure){
<<<<<<< HEAD
    var cik = modelStructure.CIK.substring('http://www.sec.gov/CIK'.length + 1);
=======
    var rut = modelStructure.data.RUT.substring('http://www.svs.cl/rut'.length + 1);
>>>>>>> cik/CIK -> rut/RUT
    var aid = $stateParams.aid;
    var networkIdentifier = $stateParams.networkIdentifier;
    //This state is a redirect
    $state.go('root.entity.modelstructure', { rut: rut, aid: aid, networkIdentifier: networkIdentifier });
    $location.replace();
})
;
