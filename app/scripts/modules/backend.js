'use strict';

angular.module('main')
.factory('$backend', function($q, $http, API_URL, DEBUG, QueriesAPI, SessionAPI, UsersAPI, BillingAPI, RECURLY_KEY) {
    return {
        API_URL: API_URL,
		DEBUG: DEBUG,
		RECURLY_KEY: RECURLY_KEY,

        Queries: new QueriesAPI(API_URL + '/_queries/public/api'),
        Session: new SessionAPI(API_URL + '/_queries/public'),
        Users: new UsersAPI(API_URL + '/_queries/public'),
        Billing: new BillingAPI(API_URL + '/_queries/public'),

        data: {},

        getYears : function() {
            var that = this;
            var deferred = $q.defer();
            if (!that.data.year || that.data.year.length === 0) {
                that.data.year = [];
                var year = (new Date()).getFullYear();
                while (year >= 2009) { that.data.year.push('' + year); year -= 1; }
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
                that.data.tag = ['INTER10', 'SP500', 'FORTUNE100', 'PJI'];
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

            $http({ method: 'GET', url: API_URL + '/_queries/public/EntityNameTickerRUTTuples.jq', params: { _method: 'POST' }, cache: true })
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
        },

        getSics: function() {
            var that = this;
            var deferred = $q.defer();
            if (that.data.sics && that.data.sics.length > 0)
            {
                deferred.resolve(that.data.sics);
                return deferred.promise;
            }

            $http({ method: 'GET', url: API_URL + '/_queries/public/Sics.jq', params: { _method: 'POST' }, cache: true })
                .success(function(data) {
                    that.data.sics =  [];
                    if (data) {
                        that.data.sics = data;
                    }
                    deferred.resolve(that.data.sics);
                });

            return deferred.promise;
        },

        getRules: function() {
            var that = this;
            var deferred = $q.defer();
            if (that.data.allRules && that.data.allRules.length > 0)
            {
                deferred.resolve(that.data.allRules);
                return deferred.promise;
            }

            $http({ method: 'GET', url: API_URL + '/_queries/public/Rules.jq', params: { _method: 'POST' }, cache: true })
                .success(function(data) {
                    that.data.allRules =  [];
                    if (data) {
                        that.data.allRules = data.availableRules;
                    }
                    deferred.resolve(that.data.allRules);
                });

            return deferred.promise;
        }
    };
})
;
