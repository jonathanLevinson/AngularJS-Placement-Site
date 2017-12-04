angular.module('mainApp')
    .factory('users',['$http', '$rootScope', function($http, $rootScope) {
        var signedInUser = {};
        function signInUser(userName, password, handleResponse) {
            var path = '/api/users/signIn/' + userName + '/' + password;
            $http.post(path)
                .then(function(response) {
                    console.log(response);
                    if (response.status === 200) {
                        signedInUser = response.data;
                        handleResponse(true);
                        $rootScope.$emit('signIn', signedInUser);
                    }
                },
                function(response) {
                    if (response.status === 401) {
                        handleResponse(false);
                        $rootScope.$emit('signOut');
                    }
                    else {
                        console.log("Users service error: " + response.status);
                    }                   
                });
        }
        
        function registerUser(userData) {
            $http.post('/api/users/register', userData)
                .then(function(response) {
                    signedInUser = response.data;
                    $rootScope.$emit('signIn', signedInUser);
                    console.log("User is registered and logged in");
                }, function(response) {
                    console.log("Users service error: " + response.status);
                });
        }
        
        function checkIfSignedIn() {
            $http.get('/api/users/check')
                .then(function(response) {
                    if (response.status === 200) {
                        signedInUser = response.data;
                        $rootScope.$emit('signIn', signedInUser)
                    }
                }, function(response) {
                    if (response.status === 401) {
                        $rootScope.$emit('signOut');
                    }
                    else {
                        console.log("Users service error: " + response);
                    }
                });                
        }

        function signOut() {
            $http.delete('/api/users/signOut')
                .then(function(response) {
                    console.log(response.data);
                    signedInUser = {};
                    $rootScope.$emit('signOut');
                }, function(response) {
                    console.log("Users service error: " + response);
                });
        }

        function applyToPosition(positionId) {
            var path = '/api/users/apply/' + signedInUser.userId + '/' + positionId;
            $http.post(path)
                .then(function(response) {
                    console.log(response.data);
                }, function(response) {
                    console.log("applyToPosition error: " + response.data);
                })
        }

        // function subscribe(notifyOnUserStatusChange) {
        //     $rootScope.$on('userStatusChange',notifyOnUserStatusChange);
        // }
        
        return {
            signInUser: signInUser,
            registerUser: registerUser,
            checkIfSignedIn: checkIfSignedIn,
            signOut: signOut,
            applyToPosition: applyToPosition
        }
    }]);