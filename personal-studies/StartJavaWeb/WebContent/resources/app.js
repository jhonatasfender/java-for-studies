angular.module('med', ['minhasDiretivas', 'ngAnimate', 'ngRoute', 'ngResource'])
.controller('indexController', function($scope, $routeParams){
	 $scope.items = ['settings', 'home', 'options', 'other'];
	 $scope.selection = $scope.items[0];
});