module.exports = (function(){
    var currentUser = {};
    var xssFilters = require('xss-filters');

    var mysql = require('mysql');
    var con = mysql.createConnection({
        host:"127.0.0.1",
        user:'root',
        password: 'student',
        database: 'devJobs'
    });

    var bcrypt = require('bcrypt');
    var salt = bcrypt.genSaltSync(12);
    
    function signInUser(userName, password, handleResult) {
        var getUserQuery = "SELECT * FROM systemUsers WHERE userName= ?;";
        var user = con.escape(xssFilters.inHTMLData(userName));
        var test = "SELECT * FROM systemUsers WHERE userName='" + user +"';";
        console.log(test);
        con.query(getUserQuery,[userName], function(err, result) {
            if (err) throw err;
            currentUser = result[0];
            if (currentUser) {
                var isPasswordMatch = bcrypt.compareSync( password, currentUser.userPassword);
                if (isPasswordMatch) {
                    //currentUser.userPassword = null; //not to send the password to the client
                    var user = {
                        userName: currentUser.userName
                    }
                    handleResult(true, user);
                }
                else {
                    handleResult(false);
                }
            }
            else {
                handleResult(false);
            }
        });
    }

    function registerAndSignInUser(userData, handleResult) {
        var hashPassword = bcrypt.hashSync(userData.password, salt);
        var registerUser = "INSERT INTO systemUsers" + 
            "(firstName, lastName, userName, userPassword, lat, lng, description, email)" +
            " VALUES (?, ? ,? ,? ,?, ?, ?, ?);" 

        var filteredUserName = xssFilters.inHTMLData(userData.userName);
        var filteredDescription = xssFilters.inHTMLData(userData.description);
        
        var registrationData = [userData.firstName, userData.lastName, filteredUserName, 
            hashPassword, userData.lat, userData.lng, filteredDescription, userData.email];

        con.query(registerUser, registrationData, function(err, result) {
            if (err) throw err;
            console.log(result.affectedRows);
            var getUserQuery = "SELECT * FROM systemUsers WHERE userName='" + userData.userName + "';";
            con.query(getUserQuery, function(err, result) {
                if (err) throw err;
                currentUser = result[0];
                //currentUser.userPassword = null;
                var user = {
                    userName: correntUser.userName
                }
                handleResult(user);
            })
        });
    }

    function applyToPosition(userId, positionId, res) {
        var addPositionToUserQuery = 'INSERT INTO usersToPositions (userId, positionId) VALUES (' + userId + ',' + positionId +')';
        con.query(addPositionToUserQuery, function(err, result) {
            if (err) throw err;
            res.send("User " + userId + " applied successfully to position " + positionId);
        })
    }

    return {
        signInUser: signInUser,
        registerAndSignInUser: registerAndSignInUser,
        applyToPosition: applyToPosition
    }
})();


//sql connection when uploading to AWS:
// var con = mysql.createConnection({
    //     host:"exampledb.chvmirnvwpa9.us-east-2.rds.amazonaws.com",
    //     user:'root',
    //     password: 'student79',
    //     database: 'devJobs'
    // });







//"'" + userData.lat + "'", "'" + userData.lng + "'"