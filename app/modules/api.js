angular.module('api', ['session-api', 'constants'])
.factory('API', function(SessionAPI, API_URL) {
    'use strict';

    return {
        Session: new SessionAPI(API_URL + '/_queries/public')
    };
});