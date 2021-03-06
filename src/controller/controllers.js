'use strict';
const bcrypt = require('bcryptjs');
const e = require('express');
const jwt = require('jsonwebtoken');
const users = require('../models/models')
const fs = require('fs')
const { promisify } = require('util')

const unlinkAsync = promisify(fs.unlink)

require("dotenv").config()

exports.default = (req, res) => {
    res.send("fuck!");
}

// login
exports.checkCredentials = (req, res) => {
    let tempass = req.body.password;
    var usercat = 0
    users.checkCredentials(req.body.username, async(err, user) => {
        if (err) res.sendStatus(500);
        else if (user.errno) res.sendStatus(500);
        else if (!user.length) res.sendStatus(403);
        else{
            let passhold = user[0].password;
            usercat = user[0].usercategory
            try{
                if (await bcrypt.compare(tempass, passhold)){
                    const username = req.body.username
                    const accessToken = jwt.sign({ name : username }, process.env.ACCESS_TOKEN_SECRET, {expiresIn: '24hr'})
                    const refreshToken = jwt.sign({ name: username }, process.env.REFRESH_TOKEN_SECRET)
                    let user_id = user[0].user_id.toString()
                    users.getbasic(user_id, (err, user) => {
                        if (err) res.sendStatus(500)
                        else if (user.errno) res.sendStatus(500)
                        else if (!user.length) res.sendStatus(500);
                        else{
                            req.session.user = user_id
                            req.session.refreshToken = refreshToken
                            res.json({
                                accessToken : accessToken,
                                fname : user[0].first_name,
                                usercategory : usercat
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
        else if (user.errno) res.sendStatus(500);
        else{
            console.log('add admin user : ok');
            res.sendStatus(200);
        }
    })
}

// refresh token 
exports.meowrefreshtoken = (req, res) => {
    if (!req.session.user) return res.sendStatus(403)
    jwt.verify(req.session.refreshToken, process.env.REFRESH_TOKEN_SECRET, (err, user) => {
        if(err) return res.sendStatus(404);
        const accessToken = jwt.sign({ name : user.name}, process.env.ACCESS_TOKEN_SECRET,{expiresIn: '1hr'})
        res.json({
            accessToken: accessToken
        })
        console.log('refreshtoken : ok');
    })
}

// get all products
exports.getallproducts = (req, res) => {
    users.getallproducts((err, user) => {
        if (err) res.sendStatus(500);
        else if (user.errno) res.sendStatus(500);
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
        else if (user.errno) res.sendStatus(500);
        else{
            console.log('get all product : ok');
            res.send(user);
        }
    })
}

// add product
exports.addproduct = (req, res) => {
    if (!req.session.user) return res.sendStatus(403)
    var id = Math.floor(Math.random()*9000000)+10000000;
    var data = {
        product_id : id,
        product_name : req.body.product_name,
        product_category : req.body.product_category,
        product_price : req.body.product_price,
        product_size : req.body.product_size,
        product_flavor : req.body.product_flavor,
        product_shape : req.body.product_shape,
        product_icing : req.body.product_icing,
        product_layer : req.body.product_layer,
        product_tier : req.body.product_tier,
        product_description : req.body.product_description,
        product_image : "http://localhost:4000\\" + req.file.path
    }
    users.addproduct(data, (err, user) => {
        if (err) res.sendStatus(500);
        else if (user.errno) res.sendStatus( );
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
        else if (user.errno) res.sendStatus(500);
        else if (!user.length) res.sendStatus(404);
        else{
            console.log('add product : ok');
            res.send(user);
        }
    })
}

// reserve product
exports.reservecake = (req, res) => {
    var id = Math.floor(Math.random()*9000000)+10000000;
    var data = {
        reservation_id : id,
        first_name : req.body.first_name,
        last_name : req.body.last_name,
        address : req.body.address,
        contact_number : req.body.contact_number,
        email : req.body.email,
        pickupdate : req.body.pickupdate,
        pickuptime : req.body.time,
        image : "http://localhost:4000\\" + req.file.path,
        size : req.body.size,
        flavor : req.body.flavor,
        icing : req.body.icing,
        specialrequest : req.body.specialrequest
    }
    // save
    users.reservecake(data, (err, user) => {
        if (err) res.sendStatus(500);
        else if (user.errno) res.sendStatus(500);
        else{
            console.log('add reservation : ok');
            res.json({
                ref_id : id
            })
        }
    })
}


//logout
exports.logout = (req, res) => {
    req.session.destroy();
    res.sendStatus(200);
}

// get userinfo
exports.getuserinfo = (req, res) => {
    if (!req.session.user) return res.sendStatus(403)
    users.getuserinfo(req.session.user, (err, user) => {
        if (err) res.sendStatus(500);
        else if (user.errno) res.sendStatus(500);
        else if (!user.length) res.sendStatus(500);
        else{
            console.log('get user : ok');
            res.send(user)
        }
    })
}

exports.updateuserinfo = (req, res) => {
    if (!req.session.user) return res.sendStatus(403)
    console.log(req.body);
    users.updateuserinfo(req.session.user, req.body, (err, user) => {
        console.log(user);
        if (err) res.sendStatus(500);
        else if (user.errno) res.sendStatus(500);
        else{
            console.log('update user: ok');
            res.send(user)
        }
    })
}

exports.deleteproduct = (req, res) => {
    if (!req.session.user) return res.sendStatus(403)
    users.deleteproduct(req.params.id, (err, user) => {
        if (err) res.sendStatus(500);
        else if (user.errno) res.sendStatus(500);
        else if (!user.length) res.sendStatus(404);
        else{
            console.log('delete product: ok');
            res.send(user)
        }
    })
}

exports.saveorder = (req, res) => {
    if (!req.session.user) return res.sendStatus(403)
    users.saveorder(req.session.user, req.body, (err, user) => {
        if (err) res.sendStatus(500);
        else if (user.errno) res.sendStatus(500);
        else{
            console.log('delete product: ok');
            res.send(user)
        }
    })
}

exports.addtocart = (req, res) => {
    if (!req.session.user) return res.sendStatus(403)
    var data  = {
        user_id : req.session.user,
        product_id : req.body.product_id
    }
    users.addtocart(data, (err, user) => {
        if (err) res.sendStatus(500);
        else if (user.errno) res.sendStatus(500);
        else{
            console.log('add to cart: ok');
            res.send(user)
        }
    })
}

// retrieve cart
exports.shoppingcart = (req, res) => {
    if (!req.session.user) return res.sendStatus(403)
    users.shoppingcart(req.session.user, (err, user) => {
        if (err) res.sendStatus(500);
        else if (user.errno) res.sendStatus(500);
        else{
            console.log('shopping cart : ok');
            res.send(user)
        }
    })
}

// delete from cart
exports.deletefromcart = (req, res) => {
    // delete all items from user first
    var haserror = false
    users.deletefromcart(req.session.user, (err, user) => {
        if (err) res,sendStatus(500);
        else if (user.errno) res.sendStatus(500);
        else{
            // resave cart 
            var items = req.body
            console.log(items);
            items.map(meow => {
                var data  = {
                    user_id : req.session.user,
                    product_id : meow.product_id
                }
                users.addtocart(data, (err, user) => {
                    if (err) return haserror = true
                    else if (user.errno) return haserror = true
                })
            })
            if (haserror) return res.sendStatus(500);
            else {
                res.sendStatus(200);
            }
        }
    })
}

// place order
exports.placeorder = (req, res) => {
    if (!req.session.user) return res.sendStatus(403)
    var data = req.body;
    var haserr = false;
    data.map(meow => {
        var id = Math.floor(Math.random()*9000000)+10000000;
        var tempdata = {
            order_id : id,
            user_id : req.session.user,
            product_id : meow.product_id,
            order_date : meow.order_date,
            order_request : meow.request
        }
        users.placeorder(tempdata, (err, res) => {
            if (err) return haserr = true
            else if (res.errno) return haserr = true
        })
    })
    if (haserr) res.sendStatus(500);
    else{
        // delete from cart
        users.deletefromcart(req.session.user, (err, user) => {
            if (err) res.sendStatus(500);
            else if (user.errno) res.sendStatus(500);
            else{
                console.log('place order : true');
                res.sendStatus(200);
            }
        })
        
    }
}

exports.register = async (req, res) => {
    // check if username exist.
    var id = Math.floor(Math.random()*9000000)+10000000;
    let tempass = req.body.password;
    const hashedPassword = await bcrypt.hash(tempass, 10);
    var newpassword = hashedPassword;
    var data = {
        user_id : id,
        username : req.body.username,
        password : newpassword,
        usercategory : 0
    }
    users.adduser(data, (err, user) => {
        if (err) res.sendStatus(500);
        else if (user.errno) {
            if (user.errno == 1062)
            {
                res.sendStatus(400)
                console.log(user);
            }
            else res.sendStatus(500)
        }
        else{
            // add userinfotbl
            var userdata = {
                user_id : id,
                first_name : req.body.first_name,
                middle_name : req.body.middle_name,
                last_name : req.body.last_name,
                birthday : req.body.birthday,
                add_house : req.body.add_house,
                add_brgy : req.body.add_brgy,
                add_city : req.body.add_city,
                add_province : req.body.add_province,
                contact_no : req.body.contact_no,
                email_address : req.body.email_address
            }
            users.adduserinfo(userdata, (err ,userx) => {
                if (err) res.sendStatus(500)
                else if (user.errno) res.sendStatus(500)
                else{
                    console.log('register user : ok');
                    res.sendStatus(200);
                }
            })
        }
    })
} 

// save custom
exports.savecustom = (req, res) => {
    if (!req.session.user) return res.sendStatus(403)
    var id = Math.floor(Math.random()*9000000)+10000000;
    var data = {
        product_id : id,
        user_id : req.session.user,
        size : req.body.size,
        flavor : req.body.flavor,
        design : req.body.design,
        topping1 : req.body.topping1,
        topping2 : req.body.topping2,
        topper : req.body.topper,
        icing : req.body.icing,
        number : req.body.number,
        message : req.body.message
    }
    users.savecustom(data, (err, user) => {
        if (err) res.sendStatus(500)
        else if (user.errno) res.sendStatus(500)
        else{
            // add to cart
            var orid = Math.floor(Math.random()*9000000)+10000000;
            var tempdata = {
                order_id : orid,
                user_id : req.session.user,
                product_id : id,
                order_date : req.body.date,
            }
            users.placeorder(tempdata, (err, user) => {
                if (err) res.sendStatus(500)
                else if (user.errno) res.sendStatus(500)
                else{
                    var tempdata1 = {
                        order_id : orid,
                        user_id : req.session.user,
                        status : 'Pending'
                    }
                    users.addtostatus(tempdata1, (err, user1) => {
                        if (err) res.sendStatus(500)
                        else if (user1.errno) res.sendStatus(500)
                        else{
                            console.log('build a cake : ok');
                            res.sendStatus(200);
                        }
                    })
                }
            })
            
        }
    })
}

// get all orders
exports.getallbuildorders = (req, res) => {
    if (!req.session.user) return res.sendStatus(403)
    users.getallbuildorders((err, user) => {
        if (err) res.sendStatus(500)
        else if (user.errno) res.sendStatus(500)
        else if (!user.length) res.sendStatus(404)
        else{
            console.log('get all build orders : ok');
            res.send(user);
        }
    })
}

exports.getallorders = (req, res) => {
    if (!req.session.user) return res.sendStatus(403)
    users.getallorders((err, user) => {
        if (err) res.sendStatus(500)
        else if (user.errno) res.sendStatus(500)
        else if (!user.length) res.sendStatus(404)
        else{
            console.log('get all orders : ok');
            res.send(user);
        }
    })
}

exports.updatestatus = (req, res) => {
    if (!req.session.user) return res.sendStatus(403)
    users.updatestatus(req.body.order_id, req.body.status, (err, user) => {
        if (err) res.sendStatus(500)
        else if (user.errno) res.sendStatus(500)
        else{
            console.log('update status : ok');
            res.sendStatus(200);
        }
    })
}

exports.getallreservation = (req, res) => {
    if (!req.session.user) return res.sendStatus(403)
    users.getallreservation((err, user) => {
        if (err) res.sendStatus(500)
        else if (user.errno) res.sendStatus(500)
        else if (!user.length) res.sendStatus(404)
        else{
            console.log('get all reservation : ok');
            res.send(user);
        }
    })
}

// update reservation status
exports.updatereservationstatus = (req, res) => {
    if (!req.session.user) return res.sendStatus(403)
    users.updatereservationstatus(req.body.reservation_id, req.body.status, (err, user) => {
        if (err) res.sendStatus(500)
        else if (user.errno) res.sendStatus(500)
        else{
            console.log('update reservation status : ok');
            res.send(user);
        }
    })
}

// update product
exports.updateproduct = (req, res) => {
    if (!req.session.user) return res.sendStatus(403)
    var tempdata = req.body
    var product_id = req.body.product_id
    delete tempdata.product_id
    console.log(req.body );
    users.updateproduct(product_id, tempdata, (err, user) => {
        if (err) res.sendStatus(500)
        else if (user.errno) res.sendStatus(500)
        else{
            console.log('update reservation status : ok');
            res.send(user);
        }
    })
}

// update product image
exports.updateproductimg = (req, res) => {
    if (!req.session.user) return res.sendStatus(403)
    var id = req.body.product_id
    var image = "http://localhost:4000\\" + req.file.path
    var moo = req.body.old_img.slice(22)
    console.log(moo);
    users.updateproductimg(id, image, (err, user) =>{
        if (err) res.sendStatus(500)
        else if (user.errno) res.sendStatus(500)
        else{
            console.log('update reservation status : ok');
            unlinkAsync(moo)
            res.sendStatus(200)
        }
    })
}

// get order by user
exports.getorderbyuser = (req, res) => {
    if (!req.session.user) return res.sendStatus(403);
    users.getorderbyuser(req.session.user, (err, user) =>{
        if (err) res.sendStatus(500)
        else if (user.errno) res.sendStatus(500)
        else{
            console.log('get order by user : ok');
            res.send(user);
        }
    })
}

// select
exports.buildselect = (req, res) => {
    if (!req.session.user) return res.sendStatus(403);
    users.buildselect((err, user) => {
        if(err) res.sendStatus(500)
        else if (user.errno) res.sendStatus(500)
        else{
            console.log('get build select : ok');
            res.send(user);
        }
    })
}

// add select
exports.addbuildselect = (req, res) => {
    if (!req.session.user) return res.sendStatus(403);
    users.addbuildselect(req.body, (err, user) => {
        if(err) res.sendStatus(500)
        else if (user.errno) res.sendStatus(500)
        else{
            console.log('add build select : ok');
            res.send(user);
        }
    })
}

// edit select
exports.editbuildselect = (req, res) => {
    if (!req.session.user) return res.sendStatus(403);
    var temp = {
        name : req.body.name,
        price : req.body.price
    }
    console.log(temp);
    users.editbuildselect(req.body.id, temp, (err, user) => {
        if(err) res.sendStatus(500)
        else if (user.errno) res.sendStatus(500)
        else{
            console.log('edit build select : ok');
            res.send(user);
        }
    })
}

// delete select
exports.deletebuildselect = (req, res) => {
    if (!req.session.user) return res.sendStatus(403);
    users.deletebuildselect(req.params.id, (err, user) => {
        console.log(user);
        if(err) res.sendStatus(500)
        else if (user.errno) res.sendStatus(500)
        else{
            console.log('delete build select : ok');
            res.send(user);
        }
    })
}