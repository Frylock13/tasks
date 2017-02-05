app.factory('productsService', productsService);

function productsService(Restangular) {
    var service = {
        allProducts : allProducts
    };

    return service;

    function allProducts() {
        return Restangular.all('products').getList();
    };
}