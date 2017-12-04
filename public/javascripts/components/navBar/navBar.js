angular.module('mainApp')
    .component('navBar', {
        templateUrl: '/javascripts/components/navBar/navBar.html',
        controller: function($rootScope, users) {
            var ctrl =this;
            $rootScope.$on('signIn', function(event, data) {
                ctrl.isSignedIn = true;
                ctrl.user = data;                
                console.log('signIn event caught in navBar component');
            });
            $rootScope.$on('signOut', function(event, data) {
                ctrl.isSignedIn = false;
                ctrl.user = {};
                console.log('signOut event caught in navBar component');
            });
            this.signOut = function() {
                users.signOut();
        }
        }
    })