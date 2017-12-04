module.exports = (function() {
    // var positions = require('../data/POSITIONS_MOCK_DATA');
    // var positions = [];
    // var positionsToSkills = [];

    var mysql = require('mysql'); //amazon AWS
    // var con = mysql.createConnection({
    //     host:"exampledb.chvmirnvwpa9.us-east-2.rds.amazonaws.com",
    //     user:'root',
    //     password: 'student79',
    //     database: 'devJobs'
    // });

    var con = mysql.createConnection({
        host:"127.0.0.1",
        user:'root',
        password: 'student',
        database: 'devJobs'
    });
    
    function getCompanies(handleData) {
        var companiesQuery = "SELECT DISTINCT companyName FROM sitePositions WHERE isRelevant=1 ORDER BY companyName";
        con.query(companiesQuery, function(err, result) {
            if (err) throw err;
            handleData(result);
        })
    }

    function searchPositions(searchCriteria, resultsLimit, handleResult) {
        var searchQuery = setQueryBySearchCriteria(searchCriteria, resultsLimit);
        con.query(searchQuery, function(err, result) {
            if (err) throw err;                
            console.log(result);
            handleResult(nestSkillsIntoPositions(result));
        });
    }

    function setQueryBySearchCriteria(searchCriteria, resultsLimit) {
        var companyString = "";
        var skillsString = "";

        if (searchCriteria.company) {
            companyString = "AND pos.companyName=" + "'" + searchCriteria.company + "'";
        }

        if (searchCriteria.skills.length > 0) { 
            skillsString = "AND pos.positionId IN (SELECT pts.positionId FROM positionsToSkills pts WHERE pts.skillId IN(" + 
            searchCriteria.skills.join() + "))";
        }

        return "SELECT pos.*, s.skillName " + 
            "FROM sitePositions pos, computerSkills s, positionsToSkills pts " + 
            "WHERE pos.isRelevant=1 AND pos.positionId=pts.positionId AND pts.skillId=s.skillId  " +
            companyString + " " +
            skillsString + " " +
            "ORDER BY publishDate DESC LIMIT " 
            + resultsLimit + ";";
    }

    function nestSkillsIntoPositions(dataBaseOutput) {
        if (dataBaseOutput.length == 0) {
            return [];
        }

        var positions = [];
        var positionsIndex = 0;
        var currentSkills = [];
        positions[positionsIndex] = dataBaseOutput[0];

        dataBaseOutput.map(row => {
            if (row.positionId != positions[positionsIndex].positionId) {
                positions[positionsIndex].skills = currentSkills;
                positionsIndex++;
                positions[positionsIndex] = row;                
                currentSkills = [];
                currentSkills.push(row.skillName);
            }
            else {
                currentSkills.push(row.skillName);
            }
        });
        positions[positionsIndex].skills = currentSkills;

        return positions;
    }

    return {
        getCompanies: getCompanies,
        searchPositions: searchPositions
    }
})();