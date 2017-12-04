angular.module('mainApp')
    .component('positionsList', {
        templateUrl: '/javascripts/components/positionsList/positionsList.html',
        controller: ['positions', '$rootScope', function(positions, $rootScope) {
            var ctrl = this;
            positions.searchDBForPositions({ skills: [], company: ""})
            
            ctrl.indexOfFirstShownPosition = 0;
            ctrl.resultsPerPage = 10; 

            ctrl.increaseShowIndex = function() {
                ctrl.indexOfFirstShownPosition += ctrl.resultsPerPage;
                scrollToTop();            
            } 
            ctrl.decreaseShowIndex = function() {
                ctrl.indexOfFirstShownPosition -= ctrl.resultsPerPage;
                scrollToTop();
            }

            function scrollToTop() {
                document.body.scrollTop = 0; 
                document.documentElement.scrollTop = 0;
            }

            $rootScope.$on('updatedPositionsList', function(event, data) {
                ctrl.positions = data;
            });
        }]
    });