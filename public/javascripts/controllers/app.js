angular.module('mainApp')
    .controller('mainController',['$scope', 'users', function($scope, users) {
        users.checkIfSignedIn();
    }]);