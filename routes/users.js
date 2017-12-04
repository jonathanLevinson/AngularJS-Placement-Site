var express = require('express');
var router = express.Router();
var users = require('../model/usersModule');
var session = require('express-session');

router.post('/signIn/:userName/:password', function(req, res, next) {
  users.signInUser(req.params.userName, req.params.password, updateSessionAndSendResult);
  function updateSessionAndSendResult(isInDatabase, userData) {
    if (isInDatabase) {
      req.session.isLoggedIn = true;
      req.session.user = userData;
      res.json(userData);
    }
    else {
      req.session.isLoggedIn = false;
      res.status(401).send({});
    }
    
  }
});

router.post('/register', function(req, res, next) {
  users.registerAndSignInUser(req.body, sendResult);
  function sendResult(user) {
    req.session.isLoggedIn = true;
    req.session.user = user;
    res.json(req.session.user);
  }
});

router.get('/check', function(req, res, next) {
  if (req.session.isLoggedIn) {
    res.json(req.session.user);
  }
  else {
    res.status(401).send({});
  }
});

router.delete('/signOut', function(req, res, next) {
  req.session.isLoggedIn = false;
  req.session.user = {};
  res.send("Logged out user from the server");
});

router.post('/apply/:userId/:positionId', function(req, res, next) {
  if (req.session.isLoggedIn) {
    if (req.session.user.userId == req.params.userId) {
      users.applyToPosition(req.params.userId, req.params.positionId, res);
    }
    else {
      res.send("Server userId and client userId do not match");
    }
  }
  else {
    res.send("User not logged in");
  }  
});

module.exports = router;
