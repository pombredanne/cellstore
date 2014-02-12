angular.module('main')
.factory('QueriesService', function($q, $http, $angularCacheFactory){

    var options = {
        storageMode: 'localStorage'
    };
    var QueriesServiceCache = $angularCacheFactory('QueriesServiceCache', options);

    return function(domain) {
        if(typeof(domain) !== 'string') {
            throw new Error("Domain parameter must be specified as a string."); 
        }

    this.listEntities = function(format, index, cik, ticker){
        var deferred = $q.defer();
        
        var path = domain + '/entities.jq.' + format + '';
        var canonicalResource = path;
        
        var url = path + '?';
        
            
            if(index !== undefined) {
                if(index instanceof Array) {
                    index.forEach(function(p){
                        url += 'index=' + encodeURIComponent(index) + '&';
                    });
                } else {
                    url += 'index=' + encodeURIComponent(index) + '&';
                }
            }
        
            
            if(cik !== undefined) {
                if(cik instanceof Array) {
                    cik.forEach(function(p){
                        url += 'cik=' + encodeURIComponent(cik) + '&';
                    });
                } else {
                    url += 'cik=' + encodeURIComponent(cik) + '&';
                }
            }
        
            
            if(ticker !== undefined) {
                if(ticker instanceof Array) {
                    ticker.forEach(function(p){
                        url += 'ticker=' + encodeURIComponent(ticker) + '&';
                    });
                } else {
                    url += 'ticker=' + encodeURIComponent(ticker) + '&';
                }
            }
        
        
        $http({
            method: 'POST',
            url: url,
            
            
            cache: QueriesServiceCache
        })
        .success(function(data, status, headers, config){
            deferred.resolve(data);
                
                
            
            QueriesServiceCache.remove(canonicalResource);
            
             
            
            
        })
        .error(function(data, status, headers, config){
            deferred.reject(data);
        });
        return deferred.promise;
    };

    this.listFilings = function(format, cik, token){
        var deferred = $q.defer();
        
        var path = domain + '/filings.jq.' + format + '';
        var canonicalResource = path;
        
        var url = path + '?';
        
        
        $http({
            method: 'POST',
            url: url,
            
            
            cache: QueriesServiceCache
        })
        .success(function(data, status, headers, config){
            deferred.resolve(data);
                
                
            
            QueriesServiceCache.remove(canonicalResource);
            
             
            
            
        })
        .error(function(data, status, headers, config){
            deferred.reject(data);
        });
        return deferred.promise;
    };

    this.listEntities = function(format, aid){
        var deferred = $q.defer();
        
        var path = domain + '/components.jq.' + format + '';
        var canonicalResource = path;
        
        var url = path + '?';
        
        
        $http({
            method: 'GET',
            url: url,
            
            
            cache: QueriesServiceCache
        })
        .success(function(data, status, headers, config){
            deferred.resolve(data);
                
                
            
             
            
            
        })
        .error(function(data, status, headers, config){
            deferred.reject(data);
        });
        return deferred.promise;
    };

    this.listEntities = function(format, cid){
        var deferred = $q.defer();
        
        var path = domain + '/facttable.jq.' + format + '';
        var canonicalResource = path;
        
        var url = path + '?';
        
        
        $http({
            method: 'GET',
            url: url,
            
            
            cache: QueriesServiceCache
        })
        .success(function(data, status, headers, config){
            deferred.resolve(data);
                
                
            
             
            
            
        })
        .error(function(data, status, headers, config){
            deferred.reject(data);
        });
        return deferred.promise;
    };

    this.listEntities = function(format, visibility){
        var deferred = $q.defer();
        
        var path = domain + '/fac.jq.' + format + '';
        var canonicalResource = path;
        
        var url = path + '?';
        
        
        $http({
            method: 'GET',
            url: url,
            
            
            cache: QueriesServiceCache
        })
        .success(function(data, status, headers, config){
            deferred.resolve(data);
                
                
            
             
            
            
        })
        .error(function(data, status, headers, config){
            deferred.reject(data);
        });
        return deferred.promise;
    };

    this.listEntities = function(format, visibility){
        var deferred = $q.defer();
        
        var path = domain + '/facts.jq.' + format + '';
        var canonicalResource = path;
        
        var url = path + '?';
        
        
        $http({
            method: 'GET',
            url: url,
            
            
            cache: QueriesServiceCache
        })
        .success(function(data, status, headers, config){
            deferred.resolve(data);
                
                
            
             
            
            
        })
        .error(function(data, status, headers, config){
            deferred.reject(data);
        });
        return deferred.promise;
    };

    };
})
;