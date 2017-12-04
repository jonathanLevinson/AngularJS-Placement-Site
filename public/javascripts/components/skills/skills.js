angular.module("mainApp")    
    .component('skills', {
        templateUrl: '/javascripts/components/skills/skills.html',  
        bindings: {
            updateSearchComponent: '&update'
        },
        controller: function(skills) {
            var ctrl = this;
            ctrl.activeSkillsCount = 0;
            skills.getAll(saveSkills);
            function saveSkills(allSkills) {
                ctrl.skills = allSkills;
                ctrl.skills.map(skill => skill.isChecked = false);
            }

            this.toggleSkill = function(inputSkill) {
                function compareSkillId(skill, index, array) {
                    return (inputSkill.skillId === skill.skillId);
                }

                var skillIndex = ctrl.skills.findIndex(compareSkillId);
                ctrl.skills[skillIndex].isChecked = !(ctrl.skills[skillIndex].isChecked);

                ctrl.activeSkillsCount = countCheckedSkills(ctrl.skills);

                function countCheckedSkills(array) {
                    var sum = 0;
                    array.map(skill => {
                        if (skill.isChecked === true) {
                            sum++;
                        }
                    });
                    return sum;
                }
                // ctrl.skills.map(skill => {
                //     if (skill.isChecked === true) {
                //         ctrl.activeSkillsCount++;
                //     }
                // });

                var exportArr = ctrl.skills;
                ctrl.updateSearchComponent({skills:exportArr});
            }

            this.reset = function() {
                ctrl.skills.map(skill => skill.isChecked = false);
                ctrl.updateSearchComponent({skills:[]});
                ctrl.activeSkillsCount = 0;
            }
        }
    });