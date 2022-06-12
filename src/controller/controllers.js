'use strict';
const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');
const users = require('../models/models')
require("dotenv").config()

exports.default = (req, res) => {
    res.send("fuck!");
}

exports.checkCredentials = (req, res) => {
    let tempass = req.body.password;
    users.checkCredentials(req.body.username, async(err, user) => {
        if (err) res.sendStatus(500);
        else if (user.errno) res.sendStatus(500);
        else if (!user.length) res.sendStatus(403);
        else{
            let passhold = user[0].password;
            try{
                if (await bcrypt.compare(tempass, passhold)){
                    const username = req.body.username
                    const accessToken = jwt.sign({ name : username }, process.env.ACCESS_TOKEN_SECRET, {expiresIn: '1hr'})
                    const refreshToken = jwt.sign({ name: username }, process.env.REFRESH_TOKEN_SECRET)
                    let user_id = user[0].user_id.toString()
                    users.getbasic(user_id, (err, user) => {
                        if (err) res.sendStatus(500)
                        else if (user.errno) res.sendStatus(500)
                        else if (!user.length) res.sendStatus(500);
                        else{
                            req.session.user = user_id
                            req.session.refreshToken = refreshToken
                            console.log(req.session);
                            res.json({
                                accessToken : accessToken,
                                fname : user[0].first_name,
                            })
                        }
                    })
                    // save token
                    console.log('login : ok');
                }
                else res.sendStatus(403); // wrong password
            }
            catch(err){
                console.log(err);
                res.sendStatus(500); 
            }
        }
    })
}

// add admin * to remove 
exports.superpoweraddadmin = async (req, res) => {
    var new_user = req.body;
    let tempass = new_user.password;
    const hashedPassword = await bcrypt.hash(tempass, 10);
    new_user.password = hashedPassword;
    users.superpoweraddadmin(new_user, (err, user) => {
        if (err) res.sendStatus(500);
        else if (user.errno) res.sendStatus(400);
        else{
            console.log('add admin user : ok');
            res.sendStatus(200);
        }
    })
}

// get all products
exports.getallproducts = (req, res) => {
    users.getallproducts((err, user) => {
        if (err) res.sendStatus(500);
        else if (user.errno) res.sendStatus(400);
        else{
            console.log('get all product : ok');
            res.send(user);
        }
    })
}

// get product by category
exports.getproductbycategory = (req, res) => {
    users.getproductbycategory(req.params.id, (err, user) => {
        if (err) res.sendStatus(500);
        else if (user.errno) res.sendStatus(400);
        else{
            console.log('get all product : ok');
            res.send(user);
        }
    })
}

// add product
exports.addproduct = (req, res) => {
    var id = Math.floor(Math.random()*9000000)+10000000;
    var data = {
        product_id : id,
        product_name : req.body.product_name,
        product_category : req.body.product_category,
        product_price : req.body.product_price,
        product_qty : req.body.product_qty,
        product_image : "http://localhost:4000\\" + req.file.path
    }
    users.addproduct(data, (err, user) => {
        if (err) res.sendStatus(500);
        else if (user.errno) res.sendStatus(400);
        else{
            console.log('add product : ok');
            res.send(user);
        }
    })
}

// get product by id
exports.getproductbyid = (req, res) => {
    users.getproductbyid(req.params.id, (err, user) => {
        if (err) res.sendStatus(500);
        else if (user.errno) res.sendStatus(400);
        else if (!user.length) res.sendStatus(404);
        else{
            console.log('add product : ok');
            res.send(user);
        }
    })
}