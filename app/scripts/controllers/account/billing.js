'use strict';

/*globals recurly*/

angular.module('main')
.controller('AccountBillingCtrl', function($scope, $modal, $backend, apiStatistics) {
    $scope.API_URL = $backend.API_URL;
    $scope.PAGESIZE = 10;
    $scope.invoices = [];
    $scope.next = '';
    $scope.more = 0;
    $scope.calls = {
        label: apiStatistics.calls,
        percentage: (apiStatistics.calls / 1000),
        from: new Date(apiStatistics.fromDate),
        to: new Date(apiStatistics.toDate) - 1
    };

    $scope.getBillingInfo = function() {
        $scope.loadingBillingInfo = true;
        $backend.Billing.getBillingInfo({ $method: 'POST', token: $scope.token, $refresh: true })
         .then(
            function(data) {
                $scope.billingInfo = data;
                $scope.loadingBillingInfo = false;
            },
            function(response) {
                $scope.$emit('error', response.status, response.data);
                $scope.loadingBillingInfo = false;
            }
        );
    };

    $scope.getInvoices = function() {
        $scope.loadingInvoices = true;
        $backend.Billing.invoices({
            $method: 'POST',
            cursor: $scope.next,
            limit: $scope.PAGESIZE,
            token: $scope.token
        })
          .then(
            function(data) {
                $scope.invoices = $scope.invoices.concat(data.invoices);
                $scope.next = data.next;
                $scope.more = data.count - $scope.PAGESIZE;
                $scope.loadingInvoices = false;
            },
            function(response) {
                $scope.$emit('error', response.status, response.data);
                $scope.loadingInvoices = false;
            }
          );
    };

    $scope.getSubscriptions = function() {
        $scope.loadingSubscriptions = true;
        $scope.subscriptions = [];
        $scope.hasPro = false;
        $backend.Billing.subscriptions({ $method: 'POST', token: $scope.token, $refresh: true })
          .then(
            function(data) {
                $scope.subscriptions = data;
                data.forEach(function(sub) {
                    if (sub.state === 'active') {
                        switch (sub.plan.planCode)
                        {
                            case 'sec_pro':
                                $scope.hasPro = true;
                                break;
                        }
                    }
                });
                $scope.loadingSubscriptions = false;
            },
            function(response) {
                $scope.$emit('error', response.status, response.data);
                $scope.loadingSubscriptions = false;
            }
          );
    };

    $scope.getBillingInfo();
    $scope.getInvoices();
    $scope.getSubscriptions();

    $scope.updateBillingInfo = function() {
        var modal = $modal.open({
            templateUrl: 'billingInfoModal.html',
            controller: 'BillingInfoModalCtrl',
            resolve: {
                billingData: function() {
                    var data = {};
                    if ($scope.billingInfo.billingData)
                    {
                        /*jshint camelcase: false */
                        data.first_name = $scope.billingInfo.billingData.firstName;
                        data.last_name = $scope.billingInfo.billingData.lastName;
                        data.address1 = $scope.billingInfo.billingData.address1;
                        data.address2 = $scope.billingInfo.billingData.address2;
                        data.city = $scope.billingInfo.billingData.city;
                        data.state = $scope.billingInfo.billingData.state;
                        data.postal_code = $scope.billingInfo.billingData.zip;
                    }
                    else
                    {
                        /*jshint camelcase: false */
                        data.first_name = $scope.user.firstname;
                        data.last_name = $scope.user.lastname;
                    }
                    return data;
                }
            }
        });

        modal.result
            .then(function(data) {
                $scope.loadingBillingInfo = true;
                $backend.Billing.setBillingInfo({ $method: 'POST', recurlyToken: data.token, token: $scope.token, $refresh: true })
                    .then(
                        function(data) {
                            $scope.billingInfo = data;
                            $scope.loadingBillingInfo = false;
                        },
                        function(response) {
                            $scope.$emit('error', response.status, response.data);
                            $scope.loadingBillingInfo = false;
                        }
                    );
            });
    };

    $scope.subscribe = function(plan) {
        var modal = $modal.open({
            templateUrl: 'subscribeModal.html',
            controller: 'SubscribeModalCtrl',
            resolve: {
                plan: function() { return plan; }
            }
        });

        modal.result.then($scope.getSubscriptions);
    };

    $scope.unsubscribe = function(plan, uuid) {
        var modal = $modal.open({
            templateUrl: 'unsubscribeModal.html',
            controller: 'UnsubscribeModalCtrl',
            resolve: {
                uuid: function() { return uuid; },
                plan: function() { return plan; }
            }
        });

        modal.result.then($scope.getSubscriptions);
    };

    $scope.getInvoiceURL = function(invoiceNumber, format) {
        return $backend.API_URL + '/_queries/public/billing/invoice.jq?_method=POST&invoiceNumber=' + invoiceNumber + '&format=' + format + '&token=' + $scope.token;
    };
})


.controller('BillingInfoModalCtrl', function ($scope, $modalInstance, $backend, billingData) {
    
    /*jshint camelcase: false */

    $scope.attempted = false;
    $scope.loading = false;
    $scope.model = { };
    $scope.model.billingData = billingData || {};
    $scope.model.billingData.country = 'US';

    if (!recurly.configured)
    {
        recurly.configure($backend.RECURLY_KEY);
    }

    $scope.submit = function() {
        $scope.attempted = true;

        $scope.$broadcast('autocomplete:update');
        $scope.model.form.number.$setValidity('invalid', true);
        $scope.model.form.ccv.$setValidity('invalid', true);
        $scope.model.form.month.$setValidity('invalid', true);
        $scope.model.form.year.$setValidity('invalid', true);
        $scope.model.form.address1.$setValidity('invalid', true);
        $scope.model.form.city.$setValidity('invalid', true);
        $scope.model.form.state.$setValidity('invalid', true);
        $scope.model.form.postal_code.$setValidity('invalid', true);

        if(!$scope.model.form.$invalid) {
            $scope.loading = true;
            
            recurly.token($scope.model.billingData,
                function(err, token) {
                    if (err)
                    {
                        err.fields.forEach(function(item) {
                            $scope.model.form[item].$setValidity('invalid', false);
                        });
                    } else {
                        $modalInstance.close({ token: token.id });
                    }
                });
        }
    };

    $scope.dismiss = function () {
        $modalInstance.dismiss('cancel');
    };
})

.controller('SubscribeModalCtrl', function ($scope, $modalInstance, $backend, plan) {
    $scope.attempted = false;
    $scope.loading = false;
    $scope.model = { };
    $scope.model.data = { plan: plan, quantity: 1, currency: 'USD' };

    if (!recurly.configured)
    {
        recurly.configure('sc-KoybJOmD5aBLdfoRQNAKTj');
    }
    $scope.pricing = recurly.Pricing();

    var plandata = {};
    $scope.pricing
        .plan($scope.model.data.plan, $scope.model.data.quantity)
        .then(function(data){
            plandata = data;
        })
        .done(function (data) {
            $scope.model.data.price = plandata.price[$scope.model.data.currency].amount;
            $scope.model.data.now = data.now;
            $scope.model.data.next = data.next;
            $scope.$apply();
        });

    $scope.applyCoupon = function() {
        $scope.model.form.coupon.$setValidity('invalid', true);
        $scope.pricing
            .coupon($scope.model.data.coupon)
            .catch(function() { $scope.model.form.coupon.$setValidity('invalid', false); })
            .done(function (data) {
                $scope.model.data.price = plan.price[$scope.model.data.currency].amount;
                $scope.model.data.now = data.now;
                $scope.$apply();
            });
    };

    $scope.submit = function() {
        $scope.attempted = true;

        $scope.$broadcast('autocomplete:update');

        if(!$scope.model.form.$invalid) {
            $scope.loading = true;
            
            $backend.Billing.createSubscription({ _method: 'POST', plan: $scope.model.data.plan, coupon: $scope.model.data.coupon, token: $scope.token, $refresh: true })
                .then(
                    function(data) {
                        $modalInstance.close({ data: data });
                    },
                    function(response) {
                        $scope.$emit('error', response.status, response.data);
                        $scope.loading = false;
                    }
                );
        }
    };

    $scope.dismiss = function () {
        $modalInstance.dismiss('cancel');
    };
})

.controller('UnsubscribeModalCtrl', function ($scope, $modalInstance, $backend, uuid, plan) {
    $scope.attempted = false;
    $scope.loading = false;
    $scope.model = { data: { uuid: uuid, plan: plan } };

    $scope.submit = function() {
        $scope.attempted = true;
        $scope.loading = true;
        $backend.Billing.cancelSubscription({ _method: 'POST', recurlyId: $scope.model.data.uuid, plan: $scope.model.data.plan, token: $scope.token, $refresh: true })
            .then(
                function(data) {
                    $modalInstance.close({ data: data });
                },
                function(response) {
                    $scope.$emit('error', response.status, response.data);
                    $scope.loading = false;
                }
            );
    };

    $scope.dismiss = function () {
        $modalInstance.dismiss('cancel');
    };
});
