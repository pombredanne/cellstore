'use strict';

angular.module('main')
.directive('disqus', function($location){
    return function($scope, elm) {
        /*jshint camelcase: false */
      // http://docs.disqus.com/help/2/
        window.disqus_shortname = 'secxbrl';
        var disqusIdentifier = elm[0].getAttribute('disqus-identifier');
        window.disqus_identifier = disqusIdentifier ? disqusIdentifier : $location.path();
        window.disqus_url = 'http://secxbrl.info' + window.disqus_identifier;

//            window.disqus_developer = 1;

    // http://docs.disqus.com/developers/universal/
    
        if(!document.getElementById('disqusScript')) {
            var dsq = document.createElement('script');
            dsq.disqusScript = true;
            dsq.type = 'text/javascript';
            dsq.async = true;
            dsq.src = 'http://secxbrl.disqus.com/embed.js';
            document.getElementsByTagName('body')[0].appendChild(dsq);
        }
        angular.element(document.getElementById('disqus_thread')).html('');
    };
})
.directive('entry', function(){
    
    var loadContent = function($scope, elm) {
        if($scope.entries.length !== 1) {
            return;
        }
        var Sha1 = Sha1 || {};
        Array.prototype.forEach.call(elm, function(e, k) {
            if($scope.entries.length === 0) {
                return;
            }
            var content = $scope.entries[k].content;
            e.innerHTML = content;
            Array.prototype.forEach.call(e.getElementsByClassName('wistia_embed'), function(embedE){
                var id = embedE.getAttribute('id').substring(7);
                var s = document.createElement('script');
                s.charset = 'ISO-8859-1';
                s.async = 'true';
                s.type = 'text/javascript';
                s.src = 'http://fast.wistia.com/embed/medias/' + id + '/metadata.js';
                document.getElementsByTagName('body')[0].appendChild(s);
                window.Wistia.embed(id);
            });
        });
    };

    return function($scope, elm){
        $scope.$watch('entries', function(){
            loadContent($scope, elm);
        });
    };
})
.factory('BlogAPI', function($http, $angularCacheFactory){
    var blogCache = $angularCacheFactory('BlogCache', {
        maxAge: 24 * 60 * 60 * 1000,
        recycleFreq: 60000,
        verifyIntegrity: true
    });

    return {
        getIndex: function() {
            return $http({
                method: 'GET',
                url: '/blog/index.json',
                cache: blogCache
            });
        }
    };
})
.controller('BlogCtrl', function($rootScope, $scope, $routeParams, $location, blogIndex) {

    $rootScope.$broadcast('$setTitle', '28.io - Blog');

    $scope.wemail = $location.search().wemail;
    $location.search({});
    $scope.index = blogIndex ? blogIndex.data : { entries: [] };

    $scope.id = function(id) {
        return id.split('/')[1];
    };

    $scope.cols = [0, 1, 2];
    $scope.itemsPerCol = $scope.cols.length;
    
    $scope.tagFilter = 'secxbrl';
    $scope.idFilter = null;
    
    $scope.hasTag = function(entry, tag) {
        return entry.tags.indexOf(tag) !== -1;
    };
    
    $scope.getEntriesfrom = function(col) {
        var entries = [];
        var rows = Math.ceil($scope.index.entries.length / $scope.itemsPerCol);
        for(var i = 0; i < rows; i++) {
            var entry = $scope.entries[(i * $scope.itemsPerCol) + col];
            if(entry) {
                entries.push(entry);
            }
        }
        return entries;
    };
    
    $scope.formatDate = function(dateStr){
        var date = new Date(dateStr);
        var current = new Date();
        var timeDiff = Math.abs(current.getTime() - date.getTime());
        var diffDays = Math.ceil(timeDiff / (1000 * 3600 * 24));
        if(diffDays > 365) {
            var years = Math.floor(diffDays / 365);
            return  years + (years > 1 ? ' years' : ' year');
        } else if(diffDays > 30) {
            var months = Math.floor(diffDays / 30);
            return months + (months > 1 ? ' months' : ' month');
        } else {
            return diffDays + (diffDays > 1 ? ' day' : ' days');
        }
    };
    
    var load = function(){
        var entries = [];
        if($routeParams.id !== undefined) {
            var id = '/' + $routeParams.id + '/' + $routeParams.slug;
            $scope.idFilter = id;
            $scope.index.entries.forEach(function(entry){
                if(entry.id === id) {
                    entries.push(entry);
                }
            });
        } else {
            $scope.index.entries.forEach(function(entry){
                if(entry.tags.indexOf($scope.tagFilter) !== -1) {
                    entries.push(entry);
                }
            });
        }
        
        $scope.entries = entries;
        if($scope.entries.length === 1) {
            $rootScope.$broadcast('$setOgImage', '/blog/images/thumbnails/' + $routeParams.id + '.png');
            $rootScope.$broadcast('$setTitle', '28.io  Blog - ' + $scope.entries[0].title);
        }
    };
    load();
});
