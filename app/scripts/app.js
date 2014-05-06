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
        var status = error.status || 500;
        var content = error.data || error;
        $rootScope.$emit('error', status, content);
        ngProgressLite.done();
    });
})
.factory('StatsInterceptor', function($q, $rootScope){
    return {
        'response': function(response) {
            if(response.data.Statistics){
                $rootScope.Statistics = response.data.Statistics;
            }
            // do something on success
            return response || $q.when(response);
        }
    };
})
// Intercept http calls.
.factory('RootScopeSpinnerInterceptor', function ($q, $rootScope, ngProgressLite) {
    return {
        // On request success
        request: function (config) {
            ngProgressLite.start();
            // Return the config or wrap it in a promise if blank.
            return config || $q.when(config);
        },

        // On request failure
        requestError: function (rejection) {
            ngProgressLite.start();
            // Return the promise rejection.
            return $q.reject(rejection);
        },

        // On response success
        response: function (response) {
            ngProgressLite.done();
            // Return the response or promise.
            return response || $q.when(response);
        },

        // On response failture
        responseError: function (rejection) {
            ngProgressLite.done();
            // Return the promise rejection.
            return $q.reject(rejection);
        }
    };
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
    $httpProvider.interceptors.push('StatsInterceptor');
    $locationProvider.html5Mode(true);
    $httpProvider.interceptors.push('RootScopeSpinnerInterceptor');

    //TODO: refactor title property to go in data property
    $stateProvider
    //Root Controller
    .state('root', {
        templateUrl: '/views/root.html',
        controller: 'RootCtrl'
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
        data: {
            active: 'pricing',
            title: 'Pricing'
        }
    })

    //Blog
    .state('root.blog', {
        url: '/blog',
        templateUrl: '/views/blog.html',
        controller: 'BlogCtrl',
        data: {
            active: 'blog',
            title: 'Blog'
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
        data: {
            title: 'Blog'
        },
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
            active: 'api',
            title: 'API'
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
        data: {
            active: 'browse',
            title: 'Search for an Entity'
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
            active: 'browse',
            title: 'Entity'
        }
    })
    
    //TODO: better title with the entity name
    .state('root.entity.summary', {
        url: '/summary',
        templateUrl: '/views/entity/summary.html',
        resolve: {
            entity: ['$rootScope', '$stateParams', '$backend', 'QueriesService', function($rootScope, $stateParams, $backend, QueriesService) {
                var service = new QueriesService($backend.API_URL + '/_queries/public/api');
                return service.listEntities({ $method: 'POST', cik: $stateParams.cik, token: $rootScope.token });
            }]
        },
        data: {
            subActive: 'summary',
            title: 'Entity Summary'
        }
    })
    .state('root.entity.filings', {
        url: '/filings',
        templateUrl: '/views/entity/filings.html',
        controller: 'FilingsCtrl',
        resolve: {
            filings: ['$rootScope', '$stateParams', '$backend', 'QueriesService', function($rootScope, $stateParams, $backend, QueriesService) {
                var service = new QueriesService($backend.API_URL + '/_queries/public/api');
                return service.listFilings({ $method: 'POST', cik: $stateParams.cik, fiscalPeriod: 'ALL', fiscalYear: 'ALL', token: $rootScope.token });
            }]
        },
        data: {
            subActive: 'filings',
            title: 'Entity Filings'
        }
    })
    .state('root.entity.information', {
        url: '/information/:year/:period',
        templateUrl: '/views/entity/information.html',
        controller: 'InformationCtrl',
        resolve: {
            years: ['$backend', function($backend) { return $backend.getYears(); }],
            periods: ['$backend', function($backend) { return $backend.getPeriods(); }]
        },
        data: {
            subActive: 'information',
            title: 'Basic Financial Information'
        },
    })
    .state('root.entity.dashboard', {
        url: '/dashboard',
        templateUrl: '/views/entity/dashboard.html',
        controller: 'DashboardCtrl',
        title: 'Dashboard',
        data: {
            subActive: 'dashboard',
            title: 'Dashboard'
        }
    })
    .state('root.entity.filing', {
        url: '/filing/:aid',
        templateUrl: '/views/entity/filing.html',
        controller: 'FilingCtrl',
        resolve: {
            filing: ['$rootScope', '$stateParams', '$backend', 'QueriesService', function($rootScope, $stateParams, $backend, QueriesService) {
                var service = new QueriesService($backend.API_URL + '/_queries/public/api');
                return service.listFilings({ $method: 'POST', aid: $stateParams.aid, token: $rootScope.token });
            }]
        },
        data: {
            title: 'Filing'
        }
    })
    .state('root.entity.components', {
        url: '/components/:aid',
        templateUrl: '/views/entity/components.html',
        controller: 'ComponentsCtrl',
        resolve: {
            components: ['$rootScope', '$stateParams', '$backend', 'QueriesService', function($rootScope, $stateParams, $backend, QueriesService) {
                var service = new QueriesService($backend.API_URL + '/_queries/public/api');
                return service.listComponents({ $method: 'POST', aid: $stateParams.aid, token: $rootScope.token });
            }]
        },
        data: {
            title: 'Components'
        }
    })
    .state('root.entity.component', {
        url: '/components/:aid/{networkIdentifier:.*}',
        templateUrl: '/views/entity/component.html',
        controller: 'ComponentCtrl',
        resolve: {
            component: ['$rootScope', '$stateParams', '$backend', 'QueriesService', function($rootScope, $stateParams, $backend, QueriesService) {
                var service = new QueriesService($backend.API_URL + '/_queries/public/api');
                return service.listComponents({ $method: 'POST', aid: $stateParams.aid, networkIdentifier: $stateParams.networkIdentifier, token: $rootScope.token });
            }]
        },
        data: {
            title: 'Component'
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
        },
        data: {
            title: 'Fact Table'
        }
    })
    .state('root.entity.modelstructure', {
        url: '/modelstructure/:aid/{networkIdentifier:.*}',
        templateUrl: '/views/entity/modelstructure.html',
        controller: 'ModelStructureCtrl',
        resolve: {
            modelStructure: ['$rootScope', '$stateParams', '$backend', 'QueriesService', function($rootScope, $stateParams, $backend, QueriesService) {
                var service = new QueriesService($backend.API_URL + '/_queries/public/api');
                return service.listModelStructure({ $method: 'POST', aid: $stateParams.aid, networkIdentifier: $stateParams.networkIdentifier, token: $rootScope.token });
            }]
        },
        data: {
            title: 'Component Model Structure'
        }
    })
    
    //Filing
    .state('root.filing', {
        url: '/filing/:aid',
        resolve: {
            filing: ['$rootScope', '$stateParams', '$backend', 'QueriesService', function($rootScope, $stateParams, $backend, QueriesService) {
                var service = new QueriesService($backend.API_URL + '/_queries/public/api');
                return service.listFilings({ $method: 'POST', aid: $stateParams.aid, token: $rootScope.token });
            }]
        },
        controller: 'RootFilingCtrl'
    })
    
    //Components
    .state('root.components', {
        url: '/components/:aid',
        resolve: {
            components: ['$rootScope', '$stateParams', '$backend', 'QueriesService', function($rootScope, $stateParams, $backend, QueriesService) {
                var service = new QueriesService($backend.API_URL + '/_queries/public/api');
                return service.listComponents({ $method: 'POST', aid: $stateParams.aid, token: $rootScope.token });
            }]
        },
        controller: 'RootComponentsCtrl'
    })
    
    //Component
    .state('root.component', {
        url: '/component/:aid/{networkIdentifier:.*}',
        resolve: {
            component: ['$rootScope', '$stateParams', '$backend', 'QueriesService', function($rootScope, $stateParams, $backend, QueriesService) {
                var service = new QueriesService($backend.API_URL + '/_queries/public/api');
                return service.listComponents({ $method: 'POST', aid: $stateParams.aid, networkIdentifier: $stateParams.networkIdentifier, token: $rootScope.token });
            }]
        },
        controller: 'RootComponentCtrl'
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
        controller: 'RootFactTableCtrl'
    })
    
    //Model Structure
    .state('root.modelstructure', {
        url: '/modelstructure/:aid/{networkIdentifier:.*}',
        resolve: {
            modelStructure: ['$rootScope', '$stateParams', '$backend', 'QueriesService', function($rootScope, $stateParams, $backend, QueriesService) {
                var service = new QueriesService($backend.API_URL + '/_queries/public/api');
                return service.listModelStructure({ $method: 'POST', aid: $stateParams.aid, networkIdentifier: $stateParams.networkIdentifier, token: $rootScope.token });
            }]
        },
        controller: 'RootModelStructureCtrl'
    })
    
    //Auth
    .state('root.auth', {
        url: '/auth{returnPage:.*}',
        templateUrl: '/views/auth.html',
        controller: 'AuthCtrl',
        data: {
            title: 'Login'
        }
    })
    
    //Account
    .state('root.account', {
        url: '/account',
        templateUrl: '/views/account.html',
        controller: 'AccountCtrl',
        resolve: {
            user: ['$rootScope', '$q', '$location', '$backend', 'UsersService', function($rootScope, $q, $location, $backend, UsersService) {
                var service = (new UsersService($backend.API_URL + '/_queries/public'));
                var deferred = $q.defer();
                
                //force auth if the token comes as query string
                var qs = $location.search();
                if (qs && qs.token) {
                    service.getUser({ token: qs.token })
                        .then(function(data) {
                            if (data && data.success && data.user) {
                                $rootScope.login(qs.token, data.user._id, data.user.email, data.user.firstname, data.user.lastname);
                                deferred.resolve($rootScope.user);
                            } else {
                                deferred.reject({ status: 401, data: data });
                            }
                        },
                        function(response) {
                            deferred.reject(response);
                        });
                } else if (!$rootScope.token) {
                    deferred.reject({ status: 401, data: { description: 'Unauthorized access!' } });
                } else {
                    deferred.resolve($rootScope.user);
                }
                return deferred.promise;
            }]
        },
        data: {
            title: 'Account'
        }
    })

    .state('root.account.info', {
        url: '/info',
        templateUrl: '/views/account/info.html',
        controller: 'AccountInfoCtrl',
        data: {
            subActive: 'info',
            title: 'Account Information'
        }
    })

    .state('root.account.password', {
        url: '/password',
        templateUrl: '/views/account/password.html',
        controller: 'AccountPasswordCtrl',
        data: {
            subActive: 'password',
            title: 'Change Password'
        }
    })

    .state('root.account.tokens', {
        url: '/tokens',
        templateUrl: '/views/account/tokens.html',
        controller: 'AccountTokensCtrl',
        data: {
            subActive: 'tokens',
            title: 'API Tokens'
        }
    })

    .state('root.conceptMap', {
        url: '/concept-map/:name',
        controller: 'ConceptMapCtrl',
        templateUrl: '/views/concept-map.html',
        data: {
            title: 'Concept Map'
        }
    })
    
    .state('root.examples', {
        url: '/examples',
        templateUrl: '/views/example.html',
        controller: 'ExampleCtrl',
        data: {
            title: 'Example'
        }
    })
    
    .state('root.example', {
        url: '/example/:example',
        templateUrl: '/views/example.html',
        controller: 'ExampleCtrl',
        data: {
            title: 'Example'
        }
    })
    
    .state('root.disclosures', {
        url: '/disclosures',
        templateUrl: '/views/disclosures.html',
        resolve: {
            disclosures: ['$rootScope', '$stateParams', '$http', '$backend', function($rootScope, $stateParams, $http, $backend){
                return $http({
                    method : 'GET',
                    url: $backend.API_URL + '/_queries/public/Disclosures.jq',
                    params : {
                        '_method' : 'POST',
                        'output': 'tree',
                        'token' : $rootScope.token
                    }
                });
            }]
        },
        controller: 'DisclosuresCtrl',
        data: {
            title: 'Disclosures'
        }
    })
    
    .state('root.comparison', {
        url: '/comparison?fiscalYear&fiscalPeriod&cik&tag&sic',
        templateUrl: '/views/comparison.html',
        controller: 'ComparisonCtrl',
        resolve: {
            tags: ['$backend', function($backend) { return $backend.getTags(); }],
            entities: ['$backend', function($backend) { return $backend.getEntities(); }],
            years: ['$backend', function($backend) { return $backend.getYears(); }],
            periods: ['$backend', function($backend) { return $backend.getPeriods(); }],
            sics: ['$backend', function($backend) { return $backend.getSics(); }]
        },
        data: {
            title: 'Comparison',
            active: 'compare',
            subActive: 'compare'
        }
    })
    .state('root.comparison.filings', {
        url: '/filings',
        templateUrl: '/views/comparison/filings.html',
        controller: 'ComparisonFilingsCtrl',
        data: {
            title: 'Filings',
            active: 'compare',
            subActive: 'filings'
        }
    })
    .state('root.comparison.information', {
        url: '/information',
        templateUrl: '/views/comparison/information.html',
        controller: 'ComparisonInformationCtrl',
        data: {
            title: 'Basic Financial Information',
            active: 'compare',
            subActive: 'information'
        }
    })
    .state('root.comparison.validationsDashboard', {
        url: '/validations-dashboard',
        templateUrl: '/views/comparison/validations-dashboard.html',
        controller: 'ComparisonValidationsDashboardCtrl',
        data: {
            title: 'Basic Semantic Validations',
            active: 'compare',
            subActive: 'validations-dashboard'
        }
    })
    .state('root.comparison.search', {
        url: '/search?concept&map',
        templateUrl: '/views/comparison/search.html',
        controller: 'ComparisonSearchCtrl',
        resolve: {
            conceptMaps: ['$backend', function($backend) { return $backend.getConceptMaps(); }],
            allRules: ['$backend', function($backend) { return $backend.getRules(); }]
        },
        data: {
            title: 'Search Facts',
            active: 'compare',
            subActive: 'search'
        }
    })
    .state('root.comparison.component', {
        url: '/components?reportElement&disclosure&label',
        templateUrl: '/views/comparison/components.html',
        controller: 'ComparisonComponentsCtrl',
        data: {
            title: 'Search Components',
            active: 'compare',
            subActive: 'components'
        }
    })

    //404
    .state('404', {
        url: '{path:.*}',
        templateUrl:'/views/404.html',
        data: {
            title: 'Page not found'
        }
    })
    ;
})
.run(function($rootScope, $location, $state, $http, $modal, $backend, $angularCacheFactory) {

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
            $rootScope.$emit('auth');
        }
        else
        {
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
        }
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

    $rootScope.$on('auth', function() {
        var p = $location.path();
        if (p === '/account' || p === '/account/password' || p === '/account/info') {
            p = '';
        }
        $state.go('root.auth', { returnPage: p }, { reload: true });
    });

    $rootScope.$on('login', function(event, token, id, email, firstname, lastname, url){
        $rootScope.login(token, id, email, firstname, lastname);
        $location.path(url).replace();
    });

    $rootScope.login = function(token, id, email, firstname, lastname) {
        $rootScope.token = token;
        $rootScope.user = { id: id, email: email, firstname: firstname, lastname: lastname };
        var cache = $angularCacheFactory.get('secxbrl');
        if (cache)
        {
            cache.put('token', angular.copy($rootScope.token));
            cache.put('user', angular.copy($rootScope.user));
        }
        //MunchkinHelper.associateLead({ Email: email, lastsecxbrlinfoop: 'login' });
    };

    $rootScope.$on('logout', function(){
        $rootScope.logout();
        $location.path('/').replace();
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
    };

    $rootScope.$on('clearCache', function(){//event
        $rootScope.clearCache();
        $location.path('/').replace();
    });

    $rootScope.clearCache = function() {
        $angularCacheFactory.clearAll();
    };

    $rootScope.gotoId = function(id) {
        $rootScope.$broadcast('scroll-id', id);
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
