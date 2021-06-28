
const mongoose = require('mongoose')

const Schema = mongoose.Schema;

const userschema = new Schema({
    name:{
        type: String,
        require : true
    },
    email: {
        type: String,
        require : true
    },
    phoneno: {
        type: String,
        require : true
    }
})

module.exports  = new mongoose.model("User", userschema);



