'use strict';

angular.module('main', [
    'ui.router', 'ngSanitize', 'ui.bootstrap', 'jmdobry.angular-cache', 'googlechart', 'navbar-toggle',
    'scroll-id', 'document-click', 'autocomplete', 'ngenter', 'constants', 'ngProgressLite',
    'stickyFooter', 'angulartics', 'angulartics.google.analytics', 'navbar-toggle'
])
.run(function($rootScope, ngProgressLite) {
    $rootScope.$on('$stateChangeStart', function() {
        ngProgressLite.start();
    });

    $rootScope.$on('$stateChangeSuccess', function() {
        ngProgressLite.done();
    });

    $rootScope.$on('$stateChangeError', function(event, toState, toParams, fromState, fromParams, error) {
        //TODO: fix hardcoded 500
        $rootScope.$emit('error', 500, error);
        ngProgressLite.done();
    });
})
.config(function ($urlRouterProvider, $stateProvider, $locationProvider, $httpProvider) {
    
    //Because angularjs default transformResponse is not based on ContentType
    $httpProvider.defaults.transformResponse = function(response, headers){
        var contentType = headers('Content-Type');
        if(/^application\/(.*\+)?json/.test(contentType)) {
            try {
                return JSON.parse(response);
            } catch(e) {
                console.error('Couldn\'t parse the following response:');
                console.error(response);
                return response;
            }
        } else {
            return response;
        }
    };

    $locationProvider.html5Mode(true);

    //TODO: refactor title property to go in data property
    $stateProvider
    //Root Controller
    .state('root', {
        templateUrl: '/views/root.html',
        controller: function($scope){
            $scope.$on('$stateChangeSuccess', function(event, toState) {
                $scope.active = toState.data && toState.data.active;
            });
        }
    })
    
    //Home
    .state('root.home', {
        templateUrl: '/views/home.html',
        url: '/',
        data: {
            active: 'home'
        }
    })
    
    //Pricing
    .state('root.pricing', {
        templateUrl: '/views/pricing.html',
        url: '/pricing',
        title: 'Pricing',
        data: {
            active: 'pricing'
        }
    })

    //Blog
    .state('root.blog', {
        url: '/blog',
        templateUrl: '/views/blog.html',
        controller: 'BlogCtrl',
        data: {
            active: 'blog'
        },
        resolve: {
            blogIndex: ['BlogAPI', function(BlogAPI) {
                return BlogAPI.getIndex();
            }]
        }
    })
    .state('root.blog.entry', {
        url: '/blog/:id/:slug',
        templateUrl: '/views/blog.html',
        controller: 'BlogCtrl',
        resolve: {
            blogIndex: ['BlogAPI', function(BlogAPI) {
                return BlogAPI.getIndex();
            }]
        }
    })
    
    //API
    //TODO: API is not stateless (aka url-able)
    .state('root.api', {
        url: '/api',
        templateUrl: '/views/api.html',
        controller: 'ApiCtrl',
        title: 'API Information',
        data: {
            active: 'api'
        }
    })

    //Entity
    .state('root.entities', {
        url: '/entity',
        templateUrl: '/views/entities.html',
        controller: 'EntitiesCtrl',
        resolve: {
            entities: ['$backend', function($backend) { return $backend.getEntities(); }]
        },
        title: 'Search for an Entity',
        data: {
            active: 'browse'
        }
    })
    .state('root.entity', {
        url: '/entity/:cik',
        templateUrl: '/views/entity.html',
        controller: 'EntityCtrl',
        resolve: {
            entity: ['$rootScope', '$stateParams', '$backend', 'QueriesService', function($rootScope, $stateParams, $backend, QueriesService) {
                var service = new QueriesService($backend.API_URL + '/_queries/public/api');
                return service.listEntities({ $method: 'POST', cik: $stateParams.cik, token: $rootScope.token });
            }]
        },
        data: {
            active: 'browse'
        }
    })
    
    .state('root.entity.analytics', {
        url: '/analytics/:year/:period/:group',
        templateUrl: '/views/entity/analytics.html',
        controller: 'AnalyticsCtrl',
        resolve: {
            years: ['$backend', function($backend) { return $backend.getYears(); }],
            periods: ['$backend', function($backend) { return $backend.getPeriods(); }]
        },
        title: 'Analytical Breakdown'
    })

    //TODO: better title with the entity name
    .state('root.entity.summary', {
        url: '/summary',
        templateUrl: '/views/entity/summary.html',
        data: {
            subActive: 'summary'
        },
        title: 'Entity Summary'
    })
    .state('root.entity.filings', {
        url: '/filings',
        templateUrl: '/views/entity/filings.html',
        controller: 'FilingsCtrl',
        resolve: {
            filings: ['$q', '$http', '$stateParams', '$backend', function($q, $http, $stateParams, $backend){
                var deferred = $q.defer();
                var cik = $stateParams.cik;
                $http({
                    method : 'GET',
                    url: $backend.API_URL + '/_queries/public/api/filings.jq',
                    params : {
                        '_method' : 'POST',
                        'cik' : cik,
                        'fiscalPeriod': 'ALL',
                        'fiscalYear': 'ALL'
                    }
                })
                .success(function(data) {
                    deferred.resolve(data.Archives);
                });
                return deferred.promise;
            }]
        },
        data: {
            subActive: 'filings'
        },
        title: 'Entity Filings'
    })
    .state('root.entity.information', {
        url: '/information/:year/:period',
        templateUrl: '/views/entity/information.html',
        controller: 'InformationCtrl',
        resolve: {
            years: ['$backend', function($backend) { return $backend.getYears(); }],
            periods: ['$backend', function($backend) { return $backend.getPeriods(); }],
            entities: ['$backend', function($backend) { return $backend.getEntities(); }]
        },
        title: 'Basic Financial Information',
        data: {
            subActive: 'information'
        },
    })
    .state('root.entity.dashboard', {
        url: '/dashboard',
        templateUrl: '/views/entity/dashboard.html',
        controller: 'DashboardCtrl',
        resolve: {
            entities: ['$backend', function($backend) { return $backend.getEntities(); }]
        },
        title: 'Dashboard',
        data: {
            subActive: 'dashboard'
        }
    })
    .state('root.entity.filing', {
        url: '/filing/:aid',
        templateUrl: '/views/entity/filing.html',
        controller: 'FilingCtrl',
        resolve: {
            filing: ['$q', '$rootScope', '$stateParams', '$http', '$backend', function($q, $rootScope, $stateParams, $http, $backend){
                return $http({
                    method : 'GET',
                    url: $backend.API_URL + '/_queries/public/api/filings.jq',
                    params : {
                        '_method': 'POST',
                        'aid': $stateParams.aid,
                        'token': $rootScope.token
                    }
                });
            }]
        }
    })
    .state('root.entity.components', {
        url: '/components/:aid',
        templateUrl: '/views/entity/components.html',
        controller: 'ComponentsCtrl',
        resolve: {
            components: ['$rootScope', '$http', '$backend', '$stateParams', function($rootScope, $http, $backend, $stateParams){
                return $http({
                    method : 'GET',
                    url: $backend.API_URL + '/_queries/public/api/components.jq',
                    params : {
                        '_method' : 'POST',
                        'aid' : $stateParams.aid,
                        'token' : $rootScope.token
                    }
                });
            }]
        }
    })
    .state('root.entity.component', {
        url: '/components/:aid/{networkIdentifier:.*}',
        templateUrl: '/views/entity/component.html',
        controller: 'ComponentCtrl',
        resolve: {
            component: ['$rootScope', '$http', '$backend', '$stateParams', function($rootScope, $http, $backend, $stateParams){
                return $http({
                    method: 'GET',
                    url: $backend.API_URL + '/_queries/public/api/components.jq',
                    params: {
                        '_method' : 'POST',
                        'aid' : $stateParams.aid,
                        'networkIdentifier' : $stateParams.networkIdentifier,
                        'token' : $rootScope.token
                    }
                });
            }]
        }
    })
    .state('root.entity.facttable', {
        url: '/facttable/:aid/{networkIdentifier:.*}',
        templateUrl: '/views/entity/facttable.html',
        controller: 'FactTableCtrl',
        resolve: {
            facttable: ['$rootScope', '$stateParams', '$backend', 'QueriesService', function($rootScope, $stateParams, $backend, QueriesService){
                var service = new QueriesService($backend.API_URL + '/_queries/public/api');
                return service.listFactTable({
                    $method : 'POST',
                    aid : $stateParams.aid,
                    networkIdentifier : $stateParams.networkIdentifier,
                    token : $rootScope.token
                });
            }]
        }
    })
    .state('root.entity.modelstructure', {
        url: '/modelstructure/:aid/{networkIdentifier:.*}',
        templateUrl: '/views/entity/modelstructure.html',
        controller: 'ModelStructureCtrl',
        resolve: {
            modelStructure: ['$rootScope', '$stateParams', '$http', '$backend', function($rootScope, $stateParams, $http, $backend){
                return $http({
                    method : 'GET',
                    url: $backend.API_URL + '/_queries/public/api/modelstructure-for-component.jq',
                    params : {
                        '_method' : 'POST',
                        'aid' : $stateParams.aid,
                        'networkIdentifier' : $stateParams.networkIdentifier,
                        'token' : $rootScope.token
                    }
                });
            }]
        },
        title: 'Component Model Structure'
    })
    
    //Filing
    .state('root.filing', {
        url: '/filing/:aid',
        resolve: {
            filing: ['$q', '$rootScope', '$stateParams', '$http', '$backend', function($q, $rootScope, $stateParams, $http, $backend){
                return $http({
                    method : 'GET',
                    url: $backend.API_URL + '/_queries/public/api/filings.jq',
                    params : {
                        '_method': 'POST',
                        'aid': $stateParams.aid,
                        'token': $rootScope.token
                    }
                });
            }]
        },
        controller: function($state, $stateParams, $location, filing){
            filing = filing.data;
            var cik = filing.Archives[0].CIK.substring('http://www.sec.gov/CIK'.length + 1);
            //This state is a redirect
            $state.go('root.entity.filing', { cik: cik, aid: $stateParams.aid });
            $location.replace();
        }
    })
    
    //Components
    .state('root.components', {
        url: '/components/:aid',
        resolve: {
            components: ['$rootScope', '$http', '$backend', '$stateParams', function($rootScope, $http, $backend, $stateParams){
                return $http({
                    method : 'GET',
                    url: $backend.API_URL + '/_queries/public/api/components.jq',
                    params : {
                        '_method': 'POST',
                        'aid': $stateParams.aid,
                        'token': $rootScope.token
                    }
                });
            }]
        },
        controller: function($state, $stateParams, $location, components){
            components = components.data;
            var cik = components.Archives[0].CIK.substring('http://www.sec.gov/CIK'.length + 1);
            //This state is a redirect
            $state.go('root.entity.components', { cik: cik, aid: $stateParams.aid });
            $location.replace();
        }
    })
    
    //Component
    .state('root.component', {
        url: '/component/:aid/{networkIdentifier:.*}',
        resolve: {
            component: ['$rootScope', '$http', '$backend', '$stateParams', function($rootScope, $http, $backend, $stateParams){
                return $http({
                    method : 'GET',
                    url: $backend.API_URL + '/_queries/public/api/components.jq',
                    params : {
                        '_method' : 'POST',
                        'aid' : $stateParams.aid,
                        'networkIdentifier': $stateParams.networkIdentifier,
                        'token' : $rootScope.token
                    }
                });
            }]
        },
        controller: function($state, $stateParams, $location, component) {
            var cik = component.data.Archives[0].CIK.substring('http://www.sec.gov/CIK'.length + 1);
            var aid = $stateParams.aid;
            var networkIdentifier = $stateParams.networkIdentifier;
            //This state is a redirect
            $state.go('root.entity.component', { cik: cik, aid: aid, networkIdentifier: networkIdentifier });
            $location.replace();
        }
    })

    //Facttable
    .state('root.facttable', {
        url: '/facttable/:aid/{networkIdentifier:.*}',
        resolve: {
            facttable: ['$rootScope', '$stateParams', '$backend', 'QueriesService', function($rootScope, $stateParams, $backend, QueriesService){
                var service = new QueriesService($backend.API_URL + '/_queries/public/api');
                return service.listFactTable({
                    $method : 'POST',
                    aid : $stateParams.aid,
                    networkIdentifier : $stateParams.networkIdentifier,
                    token : $rootScope.token
                });
            }]
        },
        controller: function($state, $stateParams, $location, facttable){
            var cik = facttable.CIK.substring('http://www.sec.gov/CIK'.length + 1);
            var aid = $stateParams.aid;
            var networkIdentifier = $stateParams.networkIdentifier;
            //This state is a redirect
            $state.go('root.entity.facttable', { cik: cik, aid: aid, networkIdentifier: networkIdentifier });
            $location.replace();
        }
    })
    
    //Model Structure
    .state('root.modelstructure', {
        url: '/modelstructure/:aid/{networkIdentifier:.*}',
        resolve: {
            modelStructure: ['$rootScope', '$stateParams', '$http', '$backend', function($rootScope, $stateParams, $http, $backend){
                return $http({
                    method : 'GET',
                    url: $backend.API_URL + '/_queries/public/api/modelstructure-for-component.jq',
                    params : {
                        '_method' : 'POST',
                        'aid' : $stateParams.aid,
                        'networkIdentifier' : $stateParams.networkIdentifier,
                        'token' : $rootScope.token
                    }
                });
            }]
        },
        controller: function($state, $stateParams, $location, modelStructure){
            var cik = modelStructure.data.CIK.substring('http://www.sec.gov/CIK'.length + 1);
            var aid = $stateParams.aid;
            var networkIdentifier = $stateParams.networkIdentifier;
            //This state is a redirect
            $state.go('root.entity.modelstructure', { cik: cik, aid: aid, networkIdentifier: networkIdentifier });
            $location.replace();
        }
    })
    
    //Auth
    .state('root.auth', {
        url: '/auth{returnPage:.*}',
        templateUrl: '/views/auth.html',
        controller: 'AuthCtrl',
        title: 'Authenticate'
    })
    
    //Account
    .state('root.account', {
        url: '/account',
        templateUrl: '/views/account.html',
        controller: 'AccountCtrl',
        title: 'Account'
    })
    .state('root.accountSection', {
        url: '/account/:section',
        templateUrl: '/views/account.html',
        controller: 'AccountCtrl',
        title: 'Account'
    })
    
    .state('root.conceptMap', {
        url: '/concept-map/:name',
        controller: 'ConceptMapCtrl',
        templateUrl: '/views/concept-map.html',
        title: 'Concept Map'
    })
    
    .state('root.examples', {
        url: '/examples',
        templateUrl: '/views/example.html',
        controller: 'ExampleCtrl',
        title: 'Example'
    })
    
    .state('root.example', {
        url: '/example/:example',
        templateUrl: '/views/example.html',
        controller: 'ExampleCtrl',
        title: 'Example'
    })
    
    .state('root.disclosures', {
        url: '/disclosures',
        templateUrl: '/views/disclosures.html',
        controller: 'DisclosuresCtrl',
        resolve: {
            years: ['$backend', function($backend) { return $backend.getYears(); }],
            periods: ['$backend', function($backend) { return $backend.getPeriods(); }]
        },
        title: 'Disclosures'
    })
    
    .state('root.disclosure', {
        url: '/disclosure/:disclosure/:year/:period',
        templateUrl: '/views/disclosure.html',
        controller: 'DisclosureCtrl',
        resolve: {
            years: ['$backend', function($backend) { return $backend.getYears(); }],
            periods: ['$backend', function($backend) { return $backend.getPeriods(); }]
        },
        title: 'Disclosure Information'
    })
    
    .state('root.comparison', {
        url: '/comparison',
        templateUrl: '/views/comparison.html',
        controller: 'ComparisonCtrl',
        title: 'Comparison'
    })
    .state('root.comparisonInformation', {
        url: '/comparison/information',
        templateUrl: '/views/comparison-information.html',
        controller: 'ComparisonInformationCtrl',
        title: 'Basic Financial Information'
    })
    .state('root.comparisonSearch', {
        url: '/comparison/search',
        templateUrl: '/views/comparison-search.html',
        controller: 'ComparisonSearchCtrl',
        resolve: {
            entities: ['$backend', function($backend) { return $backend.getEntities(); }],
            years: ['$backend', function($backend) { return $backend.getYears(); }],
            periods: ['$backend', function($backend) { return $backend.getPeriods(); }],
            conceptMaps: ['$backend', function($backend) { return $backend.getConceptMaps(); }]
        },
        title: 'Search Facts'
    })
    .state('root.comparisonComponent', {
        url: '/comparison/components',
        templateUrl: '/views/comparison-components.html',
        controller: 'ComparisonComponentsCtrl',
        resolve: {
            entities: ['$backend', function($backend) { return $backend.getEntities(); }],
            years: ['$backend', function($backend) { return $backend.getYears(); }],
            periods: ['$backend', function($backend) { return $backend.getPeriods(); }],
            conceptMaps: ['$backend', function($backend) { return $backend.getConceptMaps(); }]
        },
        title: 'Search Components'
    })

    //404
    .state('404', {
        url: '{path:.*}',
        templateUrl:'/views/404.html',
        title: 'Page not found'
    })
    ;
})
.run(function($rootScope, $location, $http, $modal, $backend, $angularCacheFactory) {

    $rootScope.API_URL = $backend.API_URL;
	$rootScope.DEBUG = $backend.DEBUG;

	$angularCacheFactory('secxbrl-http', {
        maxAge: 60 * 60 * 1000,
        recycleFreq: 60 * 1000,
        deleteOnExpire: 'aggressive'
    });
	$http.defaults.cache = $angularCacheFactory.get('secxbrl-http');

	$angularCacheFactory('secxbrl', {
        maxAge: 60 * 60 * 1000,
        recycleFreq: 60 * 1000,
        deleteOnExpire: 'aggressive',
        storageMode: 'localStorage'
    });

	var cache = $angularCacheFactory.get('secxbrl');
	if (cache)
	{
		$rootScope.token = cache.get('token');
		$rootScope.user = cache.get('user');
	}

	$rootScope.$on('error', function(event, status, error){
		if (status === 401) {
            var p = $location.path();
            if (p === '/account' || p === '/account/password' || p === '/account/info') {
                p = '';
            }
		    $location.path('/auth' + p).replace();
			return;
		}
		$modal.open( {
			template: '<div class="modal-header h3"> Error {{object.status}} <a class="close" ng-click="cancel()">&times;</a></div><div class="modal-body"> {{object.error.description }} <br><a ng-click="details=true" ng-hide="details" class="dotted">Show details</a><pre ng-show="details" class="small">{{object.error | json }}</pre></div>',
			controller: ['$scope', '$modalInstance', 'object', function ($scope, $modalInstance, object) {
                $scope.object = object;
				$scope.cancel = function () {
				    $modalInstance.dismiss('cancel');
				};
            }],
			resolve: {
				object: function() { return { status: status, error: error }; }
			}
		});
	});

	$rootScope.$on('alert', function(event, title, message){
		$modal.open( {
			template: '<div class="modal-header h3"> {{object.title}} <a class="close" ng-click="cancel()">&times;</a></div><div class="modal-body" ng-bind-html="object.message"></div><div class="text-right modal-footer"><button class="btn btn-default" ng-click="cancel()">OK</button></div>',
			controller: ['$scope', '$modalInstance', 'object',  function ($scope, $modalInstance, object) {
                $scope.object = object;
				$scope.cancel = function () {
				    $modalInstance.dismiss('cancel');
                };
			}],
			resolve: {
				object: function() { return { title: title, message: message }; }
			}
		});
	});

	$rootScope.$on('login', function(event, token, id, email, firstname, lastname, url){
		$rootScope.token = token;
		$rootScope.user = { id: id, email: email, firstname: firstname, lastname: lastname };
		var cache = $angularCacheFactory.get('secxbrl');
		if (cache)
		{
			cache.put('token', angular.copy($rootScope.token));
			cache.put('user', angular.copy($rootScope.user));
		}
		//MunchkinHelper.associateLead({ Email: email, lastsecxbrlinfoop: 'login' });
		if (!url) {
            url='/';
        }
		$location.path(url).replace();
	});

	$rootScope.$on('logout', function(){
		$rootScope.logout();
	});

	$rootScope.logout = function() {
		if ($rootScope.user) {
			//MunchkinHelper.associateLead({ Email: $rootScope.user.email, lastsecxbrlinfoop: 'logout' });
        }

		$rootScope.token = null;
		$rootScope.user = null;
		var cache = $angularCacheFactory.get('secxbrl');
		if (cache) {
			cache.remove('token');
			cache.remove('user');
		}
		$location.path('/').replace();
	};

	$rootScope.$on('clearCache', function(){//event
        $rootScope.clearCache();
	});

	$rootScope.clearCache = function() {
		$angularCacheFactory.clearAll();
		$location.path('/').replace();
	};

	$rootScope.gotoId = function(id) {
		$rootScope.$broadcast('scroll-id', id);
	};

	$rootScope.gotologin = function() {
		var p = $location.path();
		if (p.length > 5 && p.substring(0, 5) === '/auth') { return; }
		$location.url('/auth' + p, true);
	};

	$rootScope.substring = function(string, len) {
		if (string && string.length > len) {
			return string.substring(0, len) + '...';
        } else {
            return string;
        }
	};

	$rootScope.toggleMenu = function(event, visible) {
		$rootScope.visibleMenu = visible;
		if (event && visible) {
            event.stopPropagation();
        }
	};

    $rootScope.wwwFormUrlencoded = function (params) {
        if (params)
        {
            var p = [];
            Object.keys(params).forEach(function (param) {
                if (params.hasOwnProperty(param) && params[param]) {
                    if (param === '$method') {
                        p.push('_method=' + encodeURIComponent(params[param].toString()));
                    } else {
                        if (Object.prototype.toString.call(params[param]) === '[object Array]') {
                            params[param].forEach(function (item) { p.push(param + '=' + encodeURIComponent(item)); });
                        } else {
                            p.push(param + '=' + encodeURIComponent(params[param].toString()));
                        }
                    }
                }
            });
            if (p.length > 0){ return p.join('&'); }
        }
        return '';
    };
});
