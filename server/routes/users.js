
const express = require('express')
const { getUsers, createUser, getUser, deleteUser, updateUser } = require('../controller/users.js')
const router = express.Router();


//All the routes here are starting with /users



router.get('/',getUsers);

router.get('/:id',getUser);

router.post('/',createUser);

router.delete('/:id', deleteUser);

router.patch('/:id',updateUser);

module.exports = router;