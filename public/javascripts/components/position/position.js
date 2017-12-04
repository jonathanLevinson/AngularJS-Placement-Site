angular.module('mainApp')
    .component('position', {
        templateUrl: '/javascripts/components/position/position.html',
        bindings: {
            current: '<info'
        },
        controller: ['$rootScope', 'users', function($rootScope, users) {
            this.open = false;
            this.toggle = function() {
                this.open = !(this.open);
            }
            var ctrl = this;
            $rootScope.$on('signIn', function(event, data) {
                ctrl.isSignedIn = true;
                ctrl.user = data;                
                console.log('signIn event caught in position component');
            });
            $rootScope.$on('signOut', function(event, data) {
                ctrl.isSignedIn = false;
                ctrl.user = {};
                console.log('signOut event caught in position component');
            });

            ctrl.onApply = function() {
                users.applyToPosition(ctrl.current.positionId);
            }
        }]
    });