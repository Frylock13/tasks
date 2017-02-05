var app = angular.module('Kiosk', ['restangular'])
    .config(function (RestangularProvider) {

        RestangularProvider.setBaseUrl('/api');
        RestangularProvider.setRequestSuffix('.json');
        _.contains = _.includes;
    });

