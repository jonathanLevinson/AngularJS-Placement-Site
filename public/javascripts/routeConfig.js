var mod = angular.module('mainApp',['ngRoute']);

mod.config(function ($routeProvider, $locationProvider) {
  $locationProvider.html5Mode(false);
  $locationProvider.hashPrefix('');
  $routeProvider
    .when('/', {
      templateUrl: 'views/main.html'
    })
    .when('/register', {
      templateUrl: 'views/register.html'
    })
    .when('/myPositions', {
      templateUrl: 'views/myPositions.html'
    })
});