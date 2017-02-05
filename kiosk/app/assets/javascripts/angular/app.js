var app = angular.module('Kiosk', ['restangular'])
    .config(function (RestangularProvider) {

        RestangularProvider.setRequestSuffix('.json');
    });

