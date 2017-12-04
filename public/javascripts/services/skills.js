angular.module('mainApp')
    .factory('skills',['$http', function($http) {
        var allSkills = [];
        function getAll(handleResponse) {
            $http.get('/api/skills/all')
                .then(function(response) {
                    allSkills = response.data;
                    handleResponse(response.data);
                }, function(response) {
                    console.log("skills service error: " + response);
            });
        }
        
        return {
            getAll: getAll
        }
    }]);