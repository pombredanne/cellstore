angular.module('main')  
/**
 * <p>This API allows its users to retrieve financial information provided to the US Securities and Exchange Commission (SEC) by public companies using the XBRL global standard technical syntax. Submitted XBRL information is read by the system, converted to a format which is optimized for query (as opposed to XBRL which is optimized for information exchange), and stored in a database in that queriable format. Additional metadata is added to the system which is commonly used when querying this financial information. Please note that only financial information provided within SEC forms 10-Q and 10-K is provided via this system.</p> <p>Information can be retrieved about entities, the submissions made by those entities, the components contained within those submissions, the model structure of a component, or the facts reported within a component.  All information is provided in the following formats:  JSON (the default), XML, CSV, and Excel.</p> <p>For more information about using this system, you can download this Excel spreadsheet which contains working examples.  Also, this getting started guide is helpful in understanding the information provided by this system.</p> <p>Please note that information outside of the DOW30 can only be accessed using a valid token that can be retrieved by creating an account on http://www.secxbrl.info and login is done using the Session API.</p> <p>Also note, that the POST method can be simulated by using GET and adding the _method=POST parameter to the HTTP request.</p>
 */
.factory('QueriesService', function($q, $http, $rootScope){
    /**
     * @class QueriesService
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
         * @name QueriesService#listEntities
         * @param {string} format - The result format, 
         * @param {string} tag - A tag to filter, 
         * @param {string} cik - A CIK number, 
         * @param {string} ticker - A ticker symbols, 
         * 
         */
        this.listEntities = function(parameters){
            var deferred = $q.defer();
            var that = this;
            var path = '/entities.jq'
            var url = domain + path;
            var params = {};
                params['format'] = parameters.format;
            params['tag'] = parameters.tag;
            params['cik'] = parameters.cik;
            params['ticker'] = parameters.ticker;

            var body = null; 
            var method = 'POST';
            if (parameters.$method)
            {
                params['_method'] = parameters.$method;
                if (body) method = 'POST';
                else method = 'GET';
            }
            var cached = parameters.$cache && parameters.$cache.get(url);
            if(method === 'GET' && cached !== undefined && parameters.$refresh !== true) {
                deferred.resolve(cached);
            } else {
            $http({
                method: method,
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
         * @name QueriesService#listFilings
         * @param {string} format - The result format, 
         * @param {string} cik - The CIK of the entity, 
         * @param {string} token - The token of the current session (if accessing entities beyond DOW30), 
         * 
         */
        this.listFilings = function(parameters){
            var deferred = $q.defer();
            var that = this;
            var path = '/filings.jq'
            var url = domain + path;
            var params = {};
                params['format'] = parameters.format;
        if(parameters.cik  === undefined) { 
                deferred.reject(new Error('The cik parameter is required'));
                return deferred.promise;
            } else { 
                params['cik'] = parameters.cik; 
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
         * @name QueriesService#listComponents
         * @param {string} format - The result format, 
         * @param {string} aid - The id of the filing, 
         * 
         */
        this.listComponents = function(parameters){
            var deferred = $q.defer();
            var that = this;
            var path = '/components.jq'
            var url = domain + path;
            var params = {};
                params['format'] = parameters.format;
            params['aid'] = parameters.aid;
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
         * @name QueriesService#listFactTable
         * @param {string} format - The result format, 
         * @param {string} cid - The id of the component, 
         * 
         */
        this.listFactTable = function(parameters){
            var deferred = $q.defer();
            var that = this;
            var path = '/facttable.jq'
            var url = domain + path;
            var params = {};
                params['format'] = parameters.format;
            params['cid'] = parameters.cid;
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
         * @name QueriesService#listModelStructure
         * @param {string} format - The result format, 
         * @param {string} cid - The id of the component, 
         * 
         */
        this.listModelStructure = function(parameters){
            var deferred = $q.defer();
            var that = this;
            var path = '/modelstructure.jq'
            var url = domain + path;
            var params = {};
                params['format'] = parameters.format;
            params['cid'] = parameters.cid;
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
         * @name QueriesService#listFacts
         * @param {string} format - The result format, 
         * @param {string} cik - The CIK of the entity, 
         * @param {string} ticker - The ticker of the entity, 
         * @param {string} tag - The tag to filter entities, 
         * @param {string} sic - The industry group, 
         * @param {string} fiscalYear - The fiscal year of the fact to retrieve (default: LATEST), 
         * @param {string} concept - The name of the concept to retrieve the fact for, 
         * @param {string} fiscalPeriod - The fiscal period of the fact to retrieve (default: FY), 
         * @param {string} map - The concept map that should be used to resolve the concept (default: none), 
         * @param {string} token - The token of the current session (if accessing entities beyond DOW30), 
         * 
         */
        this.listFacts = function(parameters){
            var deferred = $q.defer();
            var map = 'FundamentalAccountingConcepts  <a href="/concept-map/FundamentalAccountingConcepts"><i class="fa fa-question"></i>';
            var that = this;
            var path = '/facts.jq?dei:LegalEntityAxis=sec:DefaultLegalEntity'
            var url = domain + path;
            var params = {};
                params['format'] = parameters.format;
            params['cik'] = parameters.cik;
            params['ticker'] = parameters.ticker;
            params['tag'] = parameters.tag;
            params['sic'] = parameters.sic;
            params['fiscalYear'] = parameters.fiscalYear;
        if(parameters.concept  === undefined) { 
                deferred.reject(new Error('The concept parameter is required'));
                return deferred.promise;
            } else { 
                params['concept'] = parameters.concept; 
            }
            params['fiscalPeriod'] = parameters.fiscalPeriod;
            params['map'] = parameters.map;
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
                deferred.reject({data: data, status: status, headers: headers, config: config});
                //cache.removeAll();
            })
            ;
            }
            return deferred.promise;    
        };
    };
});