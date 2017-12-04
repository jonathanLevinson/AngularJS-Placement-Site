var express = require('express');
var router = express.Router();
var positionsModule = require('../model/positionsModule');

router.get('/companies', function(req, res, next) {
    positionsModule.getCompanies((data) => res.json(data));
})

router.post('/search', function(req, res, next) {
    var MAX_NUMBER_OF_RESULTS = 1000;
    positionsModule.searchPositions(req.body, MAX_NUMBER_OF_RESULTS, (data) => res.json(data));
})

module.exports = router;