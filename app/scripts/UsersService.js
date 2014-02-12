angular.module('main')
.factory('UsersService', function($q, $http, $angularCacheFactory){

    var options = {
        storageMode: 'localStorage'
    };
    var UsersServiceCache = $angularCacheFactory('UsersServiceCache', options);

    return function(domain) {
        if(typeof(domain) !== 'string') {
            throw new Error("Domain parameter must be specified as a string."); 
        }

    this.getUser = function(userid, email){
        var deferred = $q.defer();
        
        var path = domain + '/users/get.jq';
        var canonicalResource = path;
        
        var url = path + '?';
        
            
            if(userid !== undefined) {
                if(userid instanceof Array) {
                    userid.forEach(function(p){
                        url += 'userid=' + encodeURIComponent(userid) + '&';
                    });
                } else {
                    url += 'userid=' + encodeURIComponent(userid) + '&';
                }
            }
        
            
            if(email !== undefined) {
                if(email instanceof Array) {
                    email.forEach(function(p){
                        url += 'email=' + encodeURIComponent(email) + '&';
                    });
                } else {
                    url += 'email=' + encodeURIComponent(email) + '&';
                }
            }
        
        
        $http({
            method: 'GET',
            url: url,
            
            
            cache: UsersServiceCache
        })
        .success(function(data, status, headers, config){
            deferred.resolve(data);
                
                
            
             
            
            
        })
        .error(function(data, status, headers, config){
            deferred.reject(data);
        });
        return deferred.promise;
    };

    this.newUser = function(firstname, lastname, email, password){
        var deferred = $q.defer();
        
        var path = domain + '/users/new.jq';
        var canonicalResource = path;
        
        var url = path + '?';
        
            if(firstname === undefined) {
                deferred.reject(new Error("The firstname parameter is required"));
            }
            
                if(firstname instanceof Array) {
                    firstname.forEach(function(p){
                        url += 'firstname=' + encodeURIComponent(firstname) + '&';
                    });
                } else {
                    url += 'firstname=' + encodeURIComponent(firstname) + '&';
                }
            
        
            if(lastname === undefined) {
                deferred.reject(new Error("The lastname parameter is required"));
            }
            
                if(lastname instanceof Array) {
                    lastname.forEach(function(p){
                        url += 'lastname=' + encodeURIComponent(lastname) + '&';
                    });
                } else {
                    url += 'lastname=' + encodeURIComponent(lastname) + '&';
                }
            
        
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
            
            
            cache: UsersServiceCache
        })
        .success(function(data, status, headers, config){
            deferred.resolve(data);
                
                
            
            UsersServiceCache.remove(canonicalResource);
            
             
            
            
        })
        .error(function(data, status, headers, config){
            deferred.reject(data);
        });
        return deferred.promise;
    };

    this.editUser = function(userid, firstname, lastname, email){
        var deferred = $q.defer();
        
        var path = domain + '/users/edit.jq';
        var canonicalResource = path;
        
        var url = path + '?';
        
            if(userid === undefined) {
                deferred.reject(new Error("The userid parameter is required"));
            }
            
                if(userid instanceof Array) {
                    userid.forEach(function(p){
                        url += 'userid=' + encodeURIComponent(userid) + '&';
                    });
                } else {
                    url += 'userid=' + encodeURIComponent(userid) + '&';
                }
            
        
            if(firstname === undefined) {
                deferred.reject(new Error("The firstname parameter is required"));
            }
            
                if(firstname instanceof Array) {
                    firstname.forEach(function(p){
                        url += 'firstname=' + encodeURIComponent(firstname) + '&';
                    });
                } else {
                    url += 'firstname=' + encodeURIComponent(firstname) + '&';
                }
            
        
            if(lastname === undefined) {
                deferred.reject(new Error("The lastname parameter is required"));
            }
            
                if(lastname instanceof Array) {
                    lastname.forEach(function(p){
                        url += 'lastname=' + encodeURIComponent(lastname) + '&';
                    });
                } else {
                    url += 'lastname=' + encodeURIComponent(lastname) + '&';
                }
            
        
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
            
        
        
        $http({
            method: 'POST',
            url: url,
            
            
            cache: UsersServiceCache
        })
        .success(function(data, status, headers, config){
            deferred.resolve(data);
                
                
            
            UsersServiceCache.remove(canonicalResource);
            
             
            
            
        })
        .error(function(data, status, headers, config){
            deferred.reject(data);
        });
        return deferred.promise;
    };

    this.resetPassword = function(userid, password){
        var deferred = $q.defer();
        
        var path = domain + '/users/resetPassword.jq';
        var canonicalResource = path;
        
        var url = path + '?';
        
            if(userid === undefined) {
                deferred.reject(new Error("The userid parameter is required"));
            }
            
                if(userid instanceof Array) {
                    userid.forEach(function(p){
                        url += 'userid=' + encodeURIComponent(userid) + '&';
                    });
                } else {
                    url += 'userid=' + encodeURIComponent(userid) + '&';
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
            
            
            cache: UsersServiceCache
        })
        .success(function(data, status, headers, config){
            deferred.resolve(data);
                
                
            
            UsersServiceCache.remove(canonicalResource);
            
             
            
            
        })
        .error(function(data, status, headers, config){
            deferred.reject(data);
        });
        return deferred.promise;
    };

    this.getPicture = function(userid){
        var deferred = $q.defer();
        
        var path = domain + '/users/getPicture.jq';
        var canonicalResource = path;
        
        var url = path + '?';
        
            
            if(userid !== undefined) {
                if(userid instanceof Array) {
                    userid.forEach(function(p){
                        url += 'userid=' + encodeURIComponent(userid) + '&';
                    });
                } else {
                    url += 'userid=' + encodeURIComponent(userid) + '&';
                }
            }
        
        
        $http({
            method: 'GET',
            url: url,
            
            
            cache: UsersServiceCache
        })
        .success(function(data, status, headers, config){
            deferred.resolve(data);
                
                
            
             
            
            
        })
        .error(function(data, status, headers, config){
            deferred.reject(data);
        });
        return deferred.promise;
    };

    this.uploadPicture = function(userid, image){
        var deferred = $q.defer();
        
        var path = domain + '/users/uploadPicture.jq';
        var canonicalResource = path;
        
        var url = path + '?';
        
            if(userid === undefined) {
                deferred.reject(new Error("The userid parameter is required"));
            }
            
                if(userid instanceof Array) {
                    userid.forEach(function(p){
                        url += 'userid=' + encodeURIComponent(userid) + '&';
                    });
                } else {
                    url += 'userid=' + encodeURIComponent(userid) + '&';
                }
            
        
            if(image === undefined) {
                deferred.reject(new Error("The image parameter is required"));
            }
            
                if(image instanceof Array) {
                    image.forEach(function(p){
                        url += 'image=' + encodeURIComponent(image) + '&';
                    });
                } else {
                    url += 'image=' + encodeURIComponent(image) + '&';
                }
            
        
        
        $http({
            method: 'POST',
            url: url,
            
            
            cache: UsersServiceCache
        })
        .success(function(data, status, headers, config){
            deferred.resolve(data);
                
                
            
            UsersServiceCache.remove(canonicalResource);
            
             
            
            
        })
        .error(function(data, status, headers, config){
            deferred.reject(data);
        });
        return deferred.promise;
    };

    this.removePicture = function(userid){
        var deferred = $q.defer();
        
        var path = domain + '/users/removePicture.jq';
        var canonicalResource = path;
        
        var url = path + '?';
        
            if(userid === undefined) {
                deferred.reject(new Error("The userid parameter is required"));
            }
            
                if(userid instanceof Array) {
                    userid.forEach(function(p){
                        url += 'userid=' + encodeURIComponent(userid) + '&';
                    });
                } else {
                    url += 'userid=' + encodeURIComponent(userid) + '&';
                }
            
        
        
        $http({
            method: 'POST',
            url: url,
            
            
            cache: UsersServiceCache
        })
        .success(function(data, status, headers, config){
            deferred.resolve(data);
                
                
            
            UsersServiceCache.remove(canonicalResource);
            
             
            
            
        })
        .error(function(data, status, headers, config){
            deferred.reject(data);
        });
        return deferred.promise;
    };

    };
})
;