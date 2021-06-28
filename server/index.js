

const express = require('express')
const bodyParser = require('body-parser')
const mongoose = require('mongoose')
const usersRoute = require('./routes/users.js')
const cookieSession = require("cookie-session");
const passport = require("passport");
require('./passport');



const app = express();

const PORT = process.env.PORT || 5000;

mongoose.connect(process.env.MONGODB_URI || 'mongodb+srv://adhsaugat:sa.su+987@cluster0.ll4zv.mongodb.net/Testing?retryWrites=true&w=majority', {
  useNewUrlParser: true,
  useUnifiedTopology: true,

}).then(()=> console.log('Database is connected'));

app.use(cookieSession({
  name: 'google-auth-session',
  keys:['key1', 'key2']
}));

app.use(passport.initialize());
app.use(passport.session());
app.use(bodyParser.json());

// app.get("/auth", passport.authenticate("google", {
//   scope: ["profile", "email"]
// }));

// app.get("/auth/google/callback",passport.authenticate('google',
// // { failureRedirect: '/auth/users' }),
// // function(req, res) {
// //   res.redirect('/');
// // }
// ));



app.use('/users', usersRoute);
app.listen(PORT, ()=> console.log(`Server Running on port: http://localhost:${PORT}`));

app.get('/',(req, res)=>{
    
    res.send('Hello from saugat')
})