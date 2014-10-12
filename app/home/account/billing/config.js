'use strict';

angular
.module('secxbrl')
.config(function ($stateProvider) {
    $stateProvider
    .state('home.account.billing', {
        url: 'billing/',
        templateUrl: '/home/account/billing/billing.html',
        controller: 'BillingCtrl',
        resolve: {
            apiStatistics: ['Session', 'API', function(Session, API) {
                return API.Billing.usage({
                    _method : 'POST',
                    token : Session.getToken(),
                    $refresh : true
                });
            }]
        },
        data: {
            subActive: 'billing',
            title: 'Billing Information'
        }
    });
})
;
