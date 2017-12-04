module.exports = (function() {
    var mysql = require('mysql');
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

    function getAllSkills(handleResult) {
        var skillsQuerry = 'SELECT * FROM computerSkills ORDER BY skillName';
        con.query(skillsQuerry, function(err, result) {
            if (err) throw err;
            handleResult(result);
        });
    }

    return {
        getAllSkills: getAllSkills
    }
})();