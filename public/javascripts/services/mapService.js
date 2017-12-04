angular.module('mainApp')
    .factory('mapService',['$rootScope', function($rootScope) {
            var currentMarker;

            var map = new google.maps.Map(document.getElementById('mapContainer'), {
                center: {lat: 32.109333, lng: 34.855499},
                scrollwheel: false,
                zoom: 8
            });
            var markers = [];
            
            var input = document.getElementById('mapSearch');
            var searchBox = new google.maps.places.SearchBox(input);
            map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

            map.addListener('bounds_changed', function() {
                searchBox.setBounds(map.getBounds());                
            
                searchBox.addListener('places_changed', function() {
                    var places = searchBox.getPlaces();

                    if (places.length == 0) {
                        return;
                    }

                    markers.forEach(function(marker) {
                        marker.setMap(null);
                    });
                    markers = [];

                    var bounds = new google.maps.LatLngBounds();
                    places.forEach(function(place) {
                        if (!place.geometry) {
                            console.log("Returned place contains no geometry");
                            return;
                        }
                        var icon = {
                            url: place.icon,
                            size: new google.maps.Size(71, 71),
                            origin: new google.maps.Point(0, 0),
                            anchor: new google.maps.Point(17, 34),
                            scaledSize: new google.maps.Size(25, 25)
                        };

                        // Create a marker for each place.
                        currentMarker = new google.maps.Marker({
                            map: map,
                            icon: icon,
                            title: place.name,
                            position: place.geometry.location
                        });
                        $rootScope.marker = currentMarker;
                        markers.push(currentMarker);

                        if (place.geometry.viewport) {
                            // Only geocodes have viewport.
                            bounds.union(place.geometry.viewport);
                        } else {
                            bounds.extend(place.geometry.location);
                        }
                    });
                map.fitBounds(bounds);
                });   
            });
            
        return {
            map: map
        }

    }]);