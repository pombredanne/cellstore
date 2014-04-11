'use strict';

angular.module('main')
.factory('$backend', function($q, $http, API_URL, DEBUG) {
    return {
        API_URL: API_URL,
		DEBUG: DEBUG,

        data: [],

        getYears : function() {
            var that = this;
            var deferred = $q.defer();
            if (!that.data.year || that.data.year.length === 0) {
                that.data.year = [];
                var year = (new Date()).getFullYear();
                while (year >= 2009) { that.data.year.push(year); year -= 1; }
            }
            deferred.resolve(that.data.year);
            return deferred.promise;
        },

		getPeriods : function() {
            var that = this;
            var deferred = $q.defer();
            if (!that.data.period || that.data.period.length === 0) {
                that.data.period = [ 'FY', 'Q3', 'Q2', 'Q1' ];
            }
            deferred.resolve(that.data.period);
            return deferred.promise;
		},

        getTags: function() {
            var that = this;
            var deferred = $q.defer();
            if (!that.data.tag || that.data.tag.length === 0) {
                that.data.tag = ['DOW30', 'SP500', 'FORTUNE100', 'PJI'];
            }
            deferred.resolve(that.data.tag);
            return deferred.promise;
        },

        getEntities: function() {
            var that = this;
            var deferred = $q.defer();
            if (that.data.entities && that.data.entities.length > 0) {
                deferred.resolve(that.data.entities);
                return deferred.promise;
            }

            $http({ method: 'GET', url: API_URL + '/_queries/public/EntityNameTickerCIKTuples.jq', params: { _method: 'POST' }, cache: true })
            .success(function(data) {
                that.data.entities =  [];
                if (data) { that.data.entities = data.entityNameTickerSymbolCikTuples; }
                deferred.resolve(that.data.entities);
            });

            return deferred.promise;
        },

        getConceptMaps: function() {
            var that = this;
            var deferred = $q.defer();
            if (that.data.conceptMaps && that.data.conceptMaps.length > 0)
            {
                deferred.resolve(that.data.conceptMaps);
                return deferred.promise;
            }

            $http({ method: 'GET', url: API_URL + '/_queries/public/ConceptMaps.jq', params: { _method: 'POST' }, cache: true })
                .success(function(data) {
                    that.data.conceptMaps =  [];
                    if (data) {
                        that.data.conceptMaps = data.availableMaps;
                    }
                    deferred.resolve(that.data.conceptMaps);
                });

            return deferred.promise;
        }
    };
})
;
