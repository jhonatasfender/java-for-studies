angular.module('alurapic', ['minhasDiretivas', 'ngAnimate', 'ngRoute', 'ngResource'])
.config(function($routeProvider){
    $routeProvider.when('/fotos', {
       templateUrl: 'partials/principal.html',
       controller: 'FotosController'
    });
    
    $routeProvider.when('/fotos/new', {
        templateUrl: 'partials/cadastra-foto.html',
        controller: 'FotosController'
    });
    
    $routeProvider.when('/fotos/edit/:fotoId', {
        templateUrl: 'partials/cadastra-foto.html',
        controller: 'FotosController'
    });
    
    $routeProvider.otherwise({redirectTo: '/fotos'});
});