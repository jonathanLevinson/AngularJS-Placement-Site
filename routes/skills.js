var express = require('express');
var router = express.Router();
var skills = require('../model/skillsModule');

router.get('/all', function(req, res, next) {
    skills.getAllSkills(sendSkills);
    function sendSkills(allSkills) {
        res.json(allSkills);
    }
});

module.exports = router;