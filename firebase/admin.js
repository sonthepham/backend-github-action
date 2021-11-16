const firebase = require("firebase-admin");

const credentials = require("./credentials.json");

firebase.initializeApp({
  credential: firebase.credential.cert(credentials),
  databaseURL: "https://fir-auth-server-d99ae.firebaseio.com",
});

module.exports = firebase;
