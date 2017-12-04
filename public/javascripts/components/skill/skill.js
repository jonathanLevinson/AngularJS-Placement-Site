angular.module('mainApp')
    .component('skill', {
        templateUrl: '/javascripts/components/skill/skill.html',
        bindings: {
            info: '<',
            status: '<',
            onCheck: '&'
        },
        controller: function() {
            this.handleClick = function() {
                this.onCheck(this.info);
            }
        }
    })