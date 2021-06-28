const passport = require("passport");
const GoogleStrategy = require('passport-google-oauth20').Strategy;


passport.serializeUser((user, done) => {
    done(null, user.id);
  });

  passport.deserializeUser((id, done) => {
    User.findById(id).then(user => {
      done(null, user);
    });
  });

passport.use(
  new GoogleStrategy(
    {
      clientID: "771065933468-a9ru6dbrrdg6ps1gp2jtarfsjh1ufrcl.apps.googleusercontent.com",
      clientSecret: "7txKZ9zFuGXDhfLaA_5qGyyj",
      callbackURL: "/auth/google/callback"
    },
    function(accessToken, refreshToken, profile, done) {
        return done(null, profile);
      }
    ));