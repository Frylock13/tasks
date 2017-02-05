app.factory('productsService', productsService);

function productsService(Restangular) {
    var service = {
        allProducts  : allProducts,
        searchByName : searchByName
    };

    return service;

    function allProducts() {
        return Restangular.all('products').getList().$object;
    };

    function searchByName(query) {
        var Product = Restangular.all('products');
        return Product.getList({name: query}).$object;
    }
}