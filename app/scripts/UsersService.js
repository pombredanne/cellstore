angular.module('main')  
/**
 * This API can be used to manage users. Note, that the POST method can be simulated by using GET and adding the _method=POST parameter to the HTTP request. 
 */
.factory('UsersService', function($q, $http, $rootScope){
    /**
     * @class UsersService
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
         * @name UsersService#getUser
         * @param {string} userid - , 
         * @param {string} email - , 
         * @param {string} token - The token of the current session, 
         * 
         */
        this.getUser = function(parameters){
            var deferred = $q.defer();
            var that = this;
            var path = '/users/get.jq'
            var url = domain + path;
            var params = {};
                params['userid'] = parameters.userid;
            params['email'] = parameters.email;
            params['token'] = parameters.token;
            var cached = parameters.$cache && parameters.$cache.get(url);
            if('GET' === 'GET' && cached !== undefined && parameters.$refresh !== true) {
                deferred.resolve(cached);
            } else {
            $http({
                method: 'GET',
                url: url,
                params: params
            })
            .success(function(data, status, headers, config){
                deferred.resolve(data);
                //that.$broadcast(url);
                if(parameters.$cache !== undefined) parameters.$cache.put(url, data, parameters.$cacheItemOpts ? parameters.$cacheItemOpts : {});
            })
            .error(function(data, status, headers, config){
                deferred.reject(data);
                //cache.removeAll();
            })
            ;
            }
            return deferred.promise;    
        };

        /**
         * 
         * @method
         * @name UsersService#newUser
         * @param {string} firstname - , 
         * @param {string} lastname - , 
         * @param {string} email - , 
         * @param {string} password - Will be removed after notifications are implemented., 
         * 
         */
        this.newUser = function(parameters){
            var deferred = $q.defer();
            var that = this;
            var path = '/users/new.jq'
            var url = domain + path;
            var params = {};
            if(parameters.firstname  === undefined) { 
                deferred.reject(new Error('The firstname parameter is required'));
                return deferred.promise;
            } else { 
                params['firstname'] = parameters.firstname; 
            }
        if(parameters.lastname  === undefined) { 
                deferred.reject(new Error('The lastname parameter is required'));
                return deferred.promise;
            } else { 
                params['lastname'] = parameters.lastname; 
            }
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
                deferred.reject(data);
                //cache.removeAll();
            })
            ;
            }
            return deferred.promise;    
        };

        /**
         * 
         * @method
         * @name UsersService#editUser
         * @param {string} userid - , 
         * @param {string} firstname - , 
         * @param {string} lastname - , 
         * @param {string} email - , 
         * @param {string} token - The token of the current session, 
         * 
         */
        this.editUser = function(parameters){
            var deferred = $q.defer();
            var that = this;
            var path = '/users/edit.jq'
            var url = domain + path;
            var params = {};
            if(parameters.userid  === undefined) { 
                deferred.reject(new Error('The userid parameter is required'));
                return deferred.promise;
            } else { 
                params['userid'] = parameters.userid; 
            }
        if(parameters.firstname  === undefined) { 
                deferred.reject(new Error('The firstname parameter is required'));
                return deferred.promise;
            } else { 
                params['firstname'] = parameters.firstname; 
            }
        if(parameters.lastname  === undefined) { 
                deferred.reject(new Error('The lastname parameter is required'));
                return deferred.promise;
            } else { 
                params['lastname'] = parameters.lastname; 
            }
        if(parameters.email  === undefined) { 
                deferred.reject(new Error('The email parameter is required'));
                return deferred.promise;
            } else { 
                params['email'] = parameters.email; 
            }
            params['token'] = parameters.token;
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
                deferred.reject(data);
                //cache.removeAll();
            })
            ;
            }
            return deferred.promise;    
        };

        /**
         * 
         * @method
         * @name UsersService#resetPassword
         * @param {string} userid - , 
         * @param {string} password - , 
         * @param {string} token - The token of the current session, 
         * 
         */
        this.resetPassword = function(parameters){
            var deferred = $q.defer();
            var that = this;
            var path = '/users/resetPassword.jq'
            var url = domain + path;
            var params = {};
            if(parameters.userid  === undefined) { 
                deferred.reject(new Error('The userid parameter is required'));
                return deferred.promise;
            } else { 
                params['userid'] = parameters.userid; 
            }
        if(parameters.password  === undefined) { 
                deferred.reject(new Error('The password parameter is required'));
                return deferred.promise;
            } else { 
                params['password'] = parameters.password; 
            }
            params['token'] = parameters.token;
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
                deferred.reject(data);
                //cache.removeAll();
            })
            ;
            }
            return deferred.promise;    
        };

        /**
         * 
         * @method
         * @name UsersService#forgotPassword
         * @param {string} email - , 
         * 
         */
        this.forgotPassword = function(parameters){
            var deferred = $q.defer();
            var that = this;
            var path = '/users/forgotPassword.jq'
            var url = domain + path;
            var params = {};
            if(parameters.email  === undefined) { 
                deferred.reject(new Error('The email parameter is required'));
                return deferred.promise;
            } else { 
                params['email'] = parameters.email; 
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
                deferred.reject(data);
                //cache.removeAll();
            })
            ;
            }
            return deferred.promise;    
        };

        /**
         * Use this function as target for image.
         * @method
         * @name UsersService#getPicture
         * @param {string} userid - User ID to get picture for. Default is current user., 
         * @param {string} token - The token of the current session, 
         * 
         */
        this.getPicture = function(parameters){
            var deferred = $q.defer();
            var that = this;
            var path = '/users/getPicture.jq'
            var url = domain + path;
            var params = {};
                params['userid'] = parameters.userid;
            params['token'] = parameters.token;
            var cached = parameters.$cache && parameters.$cache.get(url);
            if('GET' === 'GET' && cached !== undefined && parameters.$refresh !== true) {
                deferred.resolve(cached);
            } else {
            $http({
                method: 'GET',
                url: url,
                params: params
            })
            .success(function(data, status, headers, config){
                deferred.resolve(data);
                //that.$broadcast(url);
                if(parameters.$cache !== undefined) parameters.$cache.put(url, data, parameters.$cacheItemOpts ? parameters.$cacheItemOpts : {});
            })
            .error(function(data, status, headers, config){
                deferred.reject(data);
                //cache.removeAll();
            })
            ;
            }
            return deferred.promise;    
        };

        /**
         * 
         * @method
         * @name UsersService#uploadPicture
         * @param {string} userid - , 
         * @param {file} image - The image file, 
         * @param {string} token - The token of the current session, 
         * 
         */
        this.uploadPicture = function(parameters){
            var deferred = $q.defer();
            var that = this;
            var path = '/users/uploadPicture.jq'
            var url = domain + path;
            var params = {};
            if(parameters.userid  === undefined) { 
                deferred.reject(new Error('The userid parameter is required'));
                return deferred.promise;
            } else { 
                params['userid'] = parameters.userid; 
            }
        if(parameters.image  === undefined) { 
                deferred.reject(new Error('The image parameter is required'));
                return deferred.promise;
            } else { 
                params['image'] = parameters.image; 
            }
            params['token'] = parameters.token;
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
                deferred.reject(data);
                //cache.removeAll();
            })
            ;
            }
            return deferred.promise;    
        };

        /**
         * 
         * @method
         * @name UsersService#removePicture
         * @param {string} userid - , 
         * @param {string} token - The token of the current session, 
         * 
         */
        this.removePicture = function(parameters){
            var deferred = $q.defer();
            var that = this;
            var path = '/users/removePicture.jq'
            var url = domain + path;
            var params = {};
            if(parameters.userid  === undefined) { 
                deferred.reject(new Error('The userid parameter is required'));
                return deferred.promise;
            } else { 
                params['userid'] = parameters.userid; 
            }
            params['token'] = parameters.token;
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
                deferred.reject(data);
                //cache.removeAll();
            })
            ;
            }
            return deferred.promise;    
        };
    };
});