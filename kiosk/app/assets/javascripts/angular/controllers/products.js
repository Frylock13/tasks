app.controller('ProductsController', ProductsController)

function ProductsController(Restangular, productsService) {
    var vm = this;

    vm.products_list = productsService.allProducts();

    vm.searchByName = function (query) {
        vm.products_list = productsService.searchByName(query);
    }
}