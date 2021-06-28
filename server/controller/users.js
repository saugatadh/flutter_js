

const User = require("../models/db.js")



let users = []
exports.getUsers = async (req, res)=> {

    users = await User.find();
   res.send(users);
   console.log(users);
}

exports.createUser = (req, res)=>{
   
   var newuser = User(req.body);
   newuser.save().then (()=> console.log('User added'));
   res.send(newuser);
}

exports.getUser = async(req, res)=>{
    const {id} = req.params;
    const finduser =await User.findById(id);
    res.send(finduser);
}
exports.deleteUser = (req, res)=>{
    const { id } = req.params;
    users = users.filter((user) =>  user.id != id );
    res.send(users);

}

exports.updateUser =  (req, res)=> {
    const {id} = req.params;
    const {firstname , lastname, age} = req.body;
    const user = users.find((user)=> user.id === id);
    if(firstname) {user.firstname = firstname}
    if(lastname) {user.lastname = lastname}
    if(age) {user.age = age}
    res.send(`User with uid ${id} is updated`);

}