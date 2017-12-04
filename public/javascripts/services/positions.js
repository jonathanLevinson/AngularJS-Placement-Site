angular.module('mainApp')    
    .factory('positions', ['$http', '$rootScope', function($http, $rootScope) {   
       
        function getCompanies(handleResult) {
            $http.get('/api/positions/companies')
                .then(function(response) {
                    handleResult(response.data);
                }, function(response) {
                    console.log("Error in getCompanies function at positions service: " + response);
                })

        }

        function convertPositionDateToTimeFromNow(positions) {
            if (Array.isArray(positions)) {
                for(let i = 0 ; i < positions.length ; i++) {
                    positions[i].publishDate = convertPositionDate(positions[i].publishDate);
                }
            }

            function convertPositionDate(positionDate) {
                return moment(positionDate).fromNow();
            }
        }

        function searchDBForPositions(searchFields) {
            $http.post('/api/positions/search', searchFields)
                .then(function(response) {
                    console.log(response);
                    var positionsToDisplay = response.data;
                    convertPositionDateToTimeFromNow(positionsToDisplay)
                    $rootScope.$emit('updatedPositionsList', positionsToDisplay);
                }, function(error) {
                    console.log("Search request (positions service) failed with the following error:" )
                    console.log(error);
                })
        }

        return {
            getCompanies: getCompanies,            
            searchDBForPositions: searchDBForPositions
        }
    }]);