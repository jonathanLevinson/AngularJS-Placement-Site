angular.module('mainApp')
    .controller('searchController',['$scope','positions', function($scope, positions) {

        positions.getCompanies(updateCompanies);        
        function updateCompanies(data) {
            $scope.companies = data;
        }

        $scope.selectedCompany = '';
        $scope.selectedSkills = [];

        $scope.updateSelectedSkills = function(skills) {
            $scope.selectedSkills = [];
            skills.map(skill => {
                if (skill.isChecked == true) {
                    $scope.selectedSkills.push(skill.skillId);
                }
            });
        }

        $scope.searchDB = function() {
            positions.searchDBForPositions({ skills: $scope.selectedSkills, company: $scope.selectedCompany });
        }
    }]);