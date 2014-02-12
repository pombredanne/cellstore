angular.module('main')
.factory('SessionService', function($q, $http, $angularCacheFactory){

    var options = {
        storageMode: 'localStorage'
    };
    var SessionServiceCache = $angularCacheFactory('SessionServiceCache', options);

    return function(domain) {
        if(typeof(domain) !== 'string') {
            throw new Error("Domain parameter must be specified as a string."); 
        }

    this.login = function(email, password){
        var deferred = $q.defer();
        
        var path = domain + '/session/login.jq';
        var canonicalResource = path;
        
        var url = path + '?';
        
            if(email === undefined) {
                deferred.reject(new Error("The email parameter is required"));
            }
            
                if(email instanceof Array) {
                    email.forEach(function(p){
                        url += 'email=' + encodeURIComponent(email) + '&';
                    });
                } else {
                    url += 'email=' + encodeURIComponent(email) + '&';
                }
            
        
            if(password === undefined) {
                deferred.reject(new Error("The password parameter is required"));
            }
            
                if(password instanceof Array) {
                    password.forEach(function(p){
                        url += 'password=' + encodeURIComponent(password) + '&';
                    });
                } else {
                    url += 'password=' + encodeURIComponent(password) + '&';
                }
            
        
        
        $http({
            method: 'POST',
            url: url,
            
            
            cache: SessionServiceCache
        })
        .success(function(data, status, headers, config){
            deferred.resolve(data);
                
                
            
            SessionServiceCache.remove(canonicalResource);
            
             
            
            
        })
        .error(function(data, status, headers, config){
            deferred.reject(data);
        });
        return deferred.promise;
    };

    this.logout = function(token){
        var deferred = $q.defer();
        
        var path = domain + '/session/logout.jq';
        var canonicalResource = path;
        
        canonicalResource += '?token=' + encodeURIComponent(token) + '&';
        
        var url = path + '?';
        
            if(token === undefined) {
                deferred.reject(new Error("The token parameter is required"));
            }
            
                if(token instanceof Array) {
                    token.forEach(function(p){
                        url += 'token=' + encodeURIComponent(token) + '&';
                    });
                } else {
                    url += 'token=' + encodeURIComponent(token) + '&';
                }
            
        
        
        $http({
            method: 'POST',
            url: url,
            
            
            cache: SessionServiceCache
        })
        .success(function(data, status, headers, config){
            deferred.resolve(data);
                
                
            
            SessionServiceCache.remove(canonicalResource);
            
             
            
            
        })
        .error(function(data, status, headers, config){
            deferred.reject(data);
        });
        return deferred.promise;
    };

    };
})
;