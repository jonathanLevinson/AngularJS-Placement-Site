angular.module('mainApp')
    .component('googleMap', {
        templateUrl: '/javascripts/components/googleMap/googleMap.html',
        controller: function(mapService) {
            this.map = mapService.map;
        }
            
        });
