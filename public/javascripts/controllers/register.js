angular.module('mainApp')
    .controller('registerController',['$rootScope', '$scope', 'users', '$location', function($rootScope, $scope, users, $location) {        
        $scope.userData= {};
        $scope.userData.firstName = '';
        $scope.userData.lastName = '';
        $scope.userData.description = '';

        $scope.submitForm = function() {
            var marker = $rootScope.marker;
            if (marker) {
                $scope.userData.lat = marker.getPosition().lat() || 0;
                $scope.userData.lng = marker.getPosition().lng() || 0;
            }
            else {
                $scope.userData.lat = 0;
                $scope.userData.lng = 0;
            }            
            users.registerUser($scope.userData);
            $location.path('/');
        }
    }])