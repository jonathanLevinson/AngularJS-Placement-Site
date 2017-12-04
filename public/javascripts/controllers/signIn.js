angular.module('mainApp')
    .controller('signInController',['$scope', 'positions', 'users', function($scope, positions, users) {
        function resetSignIn() {
            $scope.userName = '';
            $scope.password = '';
        }
        resetSignIn();

        $scope.processSignIn = function() {
            if ($scope.userName && $scope.password) {
                users.signInUser($scope.userName, $scope.password, handleSignInResponse); 
            }
            else {
                $scope.wrongDetails = 'All fields are required';
            }
        }
        function handleSignInResponse(isLoggedIn) {
            if (!isLoggedIn) {
                $scope.wrongDetails = "Wrong details, try again";
            }
            if (isLoggedIn) {
                $scope.wrongDetails = '';
                resetSignIn();
                $('#signInModal').modal('hide');
            }
        }        
    }]);