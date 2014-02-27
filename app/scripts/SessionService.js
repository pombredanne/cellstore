angular.module('main')  
/**
 * This API can be used to authorize requests. Essentially, there are two endpoints: (1) One for logging in with an email address and a password in order to retrieve a token that can be used for authorizing future request and (2) one for destroying a session identified by a token. Note, that the POST method can be simulated by using GET and adding the _method=POST parameter to the HTTP request. 
 */
.factory('SessionService', function($q, $http, $rootScope){
    /**
     * @class SessionService
     * @param {string} domain - The project domain
     */
    return function(domain) {
        if(typeof(domain) !== 'string') {
            throw new Error('Domain parameter must be specified as a string.'); 
        }
        
        var root = '';

        this.$on = function($scope, path, handler) {
            var url = domain + path;
            $scope.$on(url, function(event, data){
                handler(data);
            });
            return this;
        };

        this.$broadcast = function(path, data){
            var url = domain + path;
            $rootScope.$broadcast(url, data);
            return this;
        };
        
        /**
         * 
         * @method
         * @name SessionService#login
         * @param {string} format - The result format, 
         * @param {string} email - Email of user to login, 
         * @param {string} password - Password of user to login, 
         * 
         */
        this.login = function(parameters){
            var deferred = $q.defer();
            var that = this;
            var path = '/session/login.jq'
            var url = domain + path;
            var params = {};
                params['format'] = parameters.format;
        if(parameters.email  === undefined) { 
                deferred.reject(new Error('The email parameter is required'));
                return deferred.promise;
            } else { 
                params['email'] = parameters.email; 
            }
        if(parameters.password  === undefined) { 
                deferred.reject(new Error('The password parameter is required'));
                return deferred.promise;
            } else { 
                params['password'] = parameters.password; 
            }
            var cached = parameters.$cache && parameters.$cache.get(url);
            if('POST' === 'GET' && cached !== undefined && parameters.$refresh !== true) {
                deferred.resolve(cached);
            } else {
            $http({
                method: 'POST',
                url: url,
                params: params
            })
            .success(function(data, status, headers, config){
                deferred.resolve(data);
                //cache.removeAll();
            })
            .error(function(data, status, headers, config){
                deferred.reject({data: data, status: status, headers: headers, config: config});
                //cache.removeAll();
            })
            ;
            }
            return deferred.promise;    
        };

        /**
         * 
         * @method
         * @name SessionService#logout
         * @param {string} format - The result format, 
         * @param {string} token - API token of the current user, 
         * 
         */
        this.logout = function(parameters){
            var deferred = $q.defer();
            var that = this;
            var path = '/session/logout.jq'
            var url = domain + path;
            var params = {};
                params['format'] = parameters.format;
        if(parameters.token  === undefined) { 
                deferred.reject(new Error('The token parameter is required'));
                return deferred.promise;
            } else { 
                params['token'] = parameters.token; 
            }
            var cached = parameters.$cache && parameters.$cache.get(url);
            if('POST' === 'GET' && cached !== undefined && parameters.$refresh !== true) {
                deferred.resolve(cached);
            } else {
            $http({
                method: 'POST',
                url: url,
                params: params
            })
            .success(function(data, status, headers, config){
                deferred.resolve(data);
                //cache.removeAll();
            })
            .error(function(data, status, headers, config){
                deferred.reject({data: data, status: status, headers: headers, config: config});
                //cache.removeAll();
            })
            ;
            }
            return deferred.promise;    
        };
    };
});