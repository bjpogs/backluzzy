'use strict';
const bcrypt = require('bcryptjs');
const e = require('express');
const jwt = require('jsonwebtoken');
const users = require('../models/models')
const fs = require('fs')
const { promisify } = require('util');

const unlinkAsync = promisify(fs.unlink)

require("dotenv").config()

exports.default = (req, res) => {
    res.send("fuck!");
}

// login
exports.checkCredentials = (req, res) => {
    try{
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
                    const accessToken = jwt.sign({ name : username }, process.env.ACCESS_TOKEN_SECRET, {expiresIn: 86400})
                    const refreshToken = jwt.sign({ name: username }, process.env.REFRESH_TOKEN_SECRET)
                    let user_id = user[0].user_id.toString()
                    users.getbasic(user_id, (err, user) => {
                        if (err) res.sendStatus(500)
                        else if (user.errno) res.sendStatus(500)
                        else if (!user.length) res.sendStatus(500);
                        else{
                            req.session.user = user_id
                            req.session.refreshToken = refreshToken
                        console.log(req.session)    
							res.json({
                                accessToken : accessToken,
                                fname : user[0].first_name,
								lname : user[0].last_name,
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
    })}
    catch(err ){
	res.status(400).json({ error: 'login error' })
    }
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
    try{
    if (!req.session.user) return res.sendStatus(403)
    jwt.verify(req.session.refreshToken, process.env.REFRESH_TOKEN_SECRET, (err, user) => {
        if(err) return res.sendStatus(404);
        const accessToken = jwt.sign({ name : user.name}, process.env.ACCESS_TOKEN_SECRET,{expiresIn: '1d'})
        res.json({
            accessToken: accessToken
        })
        console.log('refreshtoken : ok');
    })}

    catch(err ){
        res.status(400).json({ error: 'refreshtoken error' })
    }

}

// get all products
exports.getallproducts = (req, res) => {
    try {
    users.getallproducts((err, user) => {
        if (err) res.sendStatus(500);
        else if (user.errno) res.sendStatus(500);
        else{
            console.log('get all product : ok');
            res.send(user);
        }
    })}
    catch(err ){
        res.status(400).json({ error: 'get all products error' })
    }
}

// get shop products
exports.getshopproducts = (req, res) => {
    try {
    users.getshopproducts((err, user) => {
        if (err) res.sendStatus(500);
        else if (user.errno) res.sendStatus(500);
        else{
            console.log('get shop product : ok');
            res.send(user);
        }
    })}
    catch(err ){
        res.status(400).json({ error: 'get shop products error' })
    }
}


// get product by category
exports.getproductbycategory = (req, res) => {
    try{
    users.getproductbycategory(req.params.id, (err, user) => {
        if (err) res.sendStatus(500);
        else if (user.errno) res.sendStatus(500);
        else{
            console.log('get all product : ok');
            res.send(user);
        }
    })}
    catch(err ){
        res.status(400).json({ error: 'get products by cat error' })
    }
}

// add product
exports.addproduct = (req, res) => {
    try{
    //if (!req.session.user) return res.sendStatus(403)
    var id = Math.floor(Math.random()*9000000)+10000000;
    var data = {
        product_id : id,
        product_name : req.body.product_name,
        product_category : req.body.product_category,
	product_subcategory : req.body.product_subcategory,
        product_price : req.body.product_price,
        product_size : req.body.product_size,
        product_flavor : req.body.product_flavor,
        product_shape : req.body.product_shape,
        product_icing : req.body.product_icing,
        product_layer : req.body.product_layer,
        product_tier : req.body.product_tier,
	product_status : 0,
	product_qty : 1,
        product_description : req.body.product_description,
        product_image : "https://luzzysupremesweets.shop/backluzzy/" + req.file.path
    }
    users.addproduct(data, (err, user) => {
        console.log(user);
        if (err) res.sendStatus(500);
        else if (user.errno) res.sendStatus(500 );
        else{
            console.log('add product : ok');
            res.send(user);
        }
    })}
    catch(err ){
        res.status(400).json({ error: 'add products error' })
    }

}
exports.updateshopproduct = (req, res) => {
    try{
    //if (!req.session.user) return res.sendStatus(403)
   console.log(req.body); 
   var data = {
        product_name : req.body.product_name,
        product_category : req.body.product_category,
	product_subcategory : req.body.product_subcategory,
        product_price : req.body.product_price,
        product_size : req.body.product_size,
        product_flavor : req.body.product_flavor,
        product_shape : req.body.product_shape,
        product_icing : req.body.product_icing,
        product_layer : req.body.product_layer,
        product_tier : req.body.product_tier,
        product_description : req.body.product_description,
    }
    users.updateshopproduct(req.body.product_id, data, (err, user) => {
        console.log('error',err)
        console.log('res: ',user)        
        if (err) res.sendStatus(500);
        else if (user.errno) res.sendStatus(500);
        else{
            console.log('update product : ok');
            res.sendStatus(200);
        }
    })}
    catch(err){
       console.log(err)
       res.status(400).json({ error: 'add products error' })
    }

}

exports.testfucker = (req, res) => {
	console.log(req.body);
	res.sendStatus(200);
}

// get product by id
exports.getproductbyid = (req, res) => {
    try{
    users.getproductbyid(req.params.id, (err, user) => {
        if (err) res.sendStatus(500);
        else if (user.errno) res.sendStatus(500);
        else if (!user.length) res.sendStatus(404);
        else{
            console.log('add product : ok');
            res.send(user);
        }
    })}
    catch(err ){
        res.status(400).json({ error: 'get products by id error' })
    }

}

// reserve product
exports.reservecake = (req, res) => {
    try{
    var id = Math.floor(Math.random()*9000000)+10000000;
    var data = {
        order_id : id,
        first_name : req.body.first_name,
        last_name : req.body.last_name,
        address : req.body.address,
        contact_number : req.body.contact_number,
        email : req.body.email,
        pickupdate : req.body.pickupdate,
        pickuptime : req.body.time,
        image : "https://luzzysupremesweets.shop/backluzzy/" + req.file.path,
        size : req.body.size,
        flavor : req.body.flavor,
        icing : req.body.icing,
        specialrequest : req.body.specialrequest,
	price : 0
    }
    users.reservecake(data, (err, user) => {
	console.log(user);
        if (err) res.sendStatus(500);
        else if (user.errno) res.sendStatus(500);
        else{
            console.log('add reservation : ok');
			var tempdata1 = {
			order_id : id,
			user_id : req.session.user ? req.session.user : id,
			status : 'Pending',
			statcategory : 'Reservation'
			}
			users.addtostatus(tempdata1, (err, user1) => {
				if (err) res.sendStatus(500)
				else if (user1.errno) res.sendStatus(500)
				else{
					console.log('place order : ok');
					res.send(data)
				}
			})
            
        }
    })}
    catch(err ){
        res.status(400).json({ error: 'reserve products error' })
    }
}


//logout
exports.logout = (req, res) => {
    req.session.destroy();
    res.sendStatus(200);
}

// get userinfo
exports.getuserinfo = (req, res) => {
    try{
    if (!req.session.user) return res.sendStatus(401)
    users.getuserinfo(req.session.user, (err, user) => {
        if (err) res.sendStatus(500);
        else if (user.errno) res.sendStatus(500);
        else if (!user.length) res.sendStatus(500);
        else{
            console.log('get user : ok');
            res.send(user)
        }
    })}
    catch(err ){
        res.status(400).json({ error: 'get user info error' })
    }

}

exports.updateuserinfo = (req, res) => {
    try{
    if (!req.session.user) return res.sendStatus(403)
    users.updateuserinfo(req.session.user, req.body, (err, user) => {
        if (err) res.sendStatus(500);
        else if (user.errno) res.sendStatus(500);
        else{
            console.log('update user: ok');
            res.send(user)
        }
    })}
    catch(err ){
        res.status(400).json({ error: 'update user info error' })
    }

}

exports.deleteproduct = (req, res) => {
    try{
    if (!req.session.user) return res.sendStatus(403)
    users.deleteproduct(req.params.id, (err, user) => {
        if (err) res.sendStatus(500);
        else if (user.errno) res.sendStatus(500);
        else if (!user.length) res.sendStatus(404);
        else{
            console.log('delete product: ok');
            res.send(user)
        }
    })}
    catch(err ){
        res.status(400).json({ error: 'delete product error' })
    }

}

exports.saveorder = (req, res) => {
    try{
    if (!req.session.user) return res.sendStatus(403)
    users.saveorder(req.session.user, req.body, (err, user) => {
        if (err) res.sendStatus(500);
        else if (user.errno) res.sendStatus(500);
        else{
            console.log('delete product: ok');
            res.send(user)
        }
    })}
    catch(err ){
        res.status(400).json({ error: 'save order error' })
    }

}

exports.addtocart = (req, res) => {
    try{
    if (!req.session.user) return res.sendStatus(403)
    var data  = {
        user_id : req.session.user,
        product_id : req.body.product_id,
	request : req.body.request
    }
    users.addtocart(data, (err, user) => {
	console.log(user);
        if (err) res.sendStatus(500);
        else if (user.errno) res.sendStatus(500);
        else{
            console.log('add to cart: ok');
            res.send(user)
        }
    })}
    catch(err ){
        res.status(400).json({ error: 'add to cart error' })
    }

}

// retrieve cart
exports.shoppingcart = (req, res) => {
    try{
    if (!req.session.user) return res.sendStatus(403)
    users.shoppingcart(req.session.user, (err, user) => {
        if (err) res.sendStatus(500);
        else if (user.errno) res.sendStatus(500);
        else{
            console.log('shopping cart : ok');
            res.send(user)
        }
    })}
    catch(err ){
        res.status(400).json({ error: 'retrieve cart error' })
    }

}

// delete from cart
exports.deletefromcart = (req, res) => {
    // delete all items from user first
    try{
    var haserror = false
    users.deletefromcart(req.session.user, (err, user) => {
        if (err) res,sendStatus(500);
        else if (user.errno) res.sendStatus(500);
        else{
            // resave cart 
            var items = req.body
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
    })}
    catch(err ){
        res.status(400).json({ error: 'delete from cart error' })
    }

}

// place order
exports.placeorder = (req, res) => {
    try{
    if (!req.session.user) return res.sendStatus(403)
    var data = req.body;
    var haserr = false;
    var id
    data.map(meow => {
		id = Math.floor(Math.random()*9000000)+10000000;
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
        // add order to status
        var tostatus = {
            order_id : id,
            user_id : req.session.user,
            status : 'Pending',
			statcategory: 'Shop'
        }
        users.addtostatus(tostatus, (err, user1) => {
            if (err) return haserr = true
            else if (res.errno) return haserr = true
        })
    })
    if (haserr) res.sendStatus(500);
    else{
        // delete from cart note : need to select items to checkout / delete.
        users.deletefromcart(req.session.user, (err, user) => {
            if (err) res.sendStatus(500);
            else if (user.errno) res.sendStatus(500);
            else{
                console.log('place order : ok');
                res.sendStatus(200);
            }
        })
    }
    }
    catch(err ){
        res.status(400).json({ error: 'place order error' })
    }

}

exports.register = async (req, res) => {
    // check if username exist.
    try{
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
    })}
    catch(err ){
        res.status(400).json({ error: 'register error' })
    }

} 

// save custom
exports.savecustom = (req, res) => {
    try{
    if (!req.session.user) return res.sendStatus(403)
    var id = Math.floor(Math.random()*9000000)+10000000;
    const today = new Date();
    const yyyy = today.getFullYear();
    let mm = today.getMonth() + 1; // Months start at 0!
    let dd = today.getDate();

    if (dd < 10) dd = '0' + dd;
    if (mm < 10) mm = '0' + mm;

    const formattedToday = dd + '/' + mm + '/' + yyyy;
    var data = {
        order_id : id,
        user_id : req.session.user,
        size : req.body.size,
        flavor : req.body.flavor,
        layer : req.body.layer,
        design : req.body.design,
        design1 : req.body.design1,
        topper : req.body.topper,
        number : req.body.number,
        date : req.body.date,
        price : req.body.price,
        message : req.body.message,
        specialrequest : req.body.specialrequest,
    }
    users.savecustom(data, (err, user) => {
        if (err) res.sendStatus(500)
        else if (user.errno) res.sendStatus(500)
        else{
            // add to cart product_id = order_id
            var orid = Math.floor(Math.random()*9000000)+10000000;
            var tempdata1 = {
				order_id : id,
				user_id : req.session.user,
				status : 'Pending',
				statcategory: 'Build a Cake'
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
    })}
    catch(err ){
        res.status(400).json({ error: 'save custom error' })
    }

}

// get all orders
exports.getallbuildorders = (req, res) => {
    try{
    if (!req.session.user) return res.sendStatus(403)
    users.getallbuildorders((err, user) => {
		console.log(user)
        if (err) res.sendStatus(500)
        else if (user.errno) res.sendStatus(500)
        else if (!user.length) res.sendStatus(404)
        else{
            console.log('get all build orders : ok');
            res.send(user);
        }
    })
    }
    catch(err){
        res.status(400).json({ error: 'get all build orders error' })
    }
}

exports.getallorders = (req, res) => {
    try{
    if (!req.session.user) return res.sendStatus(403)
    users.getallorders((err, user) => {
        if (err) res.sendStatus(500)
        else if (user.errno) res.sendStatus(500)
        else if (!user.length) res.sendStatus(404)
        else{
            console.log('get all orders : ok');
            res.send(user);
        }
    })}
    catch(err ){
        res.status(400).json({ error: 'get all order error' })
    }

}

exports.updatestatus = (req, res) => {
    try{
    if (!req.session.user) return res.sendStatus(403)
    users.updatestatus(req.body.order_id, req.body.status, (err, user) => {
        if (err) res.sendStatus(500)
        else if (user.errno) res.sendStatus(500)
        else{
            console.log('update status : ok');
            res.sendStatus(200);
        }
    })}
    catch(err ){
        res.status(400).json({ error: 'update status error' })
    }

}

exports.getallreservation = (req, res) => {
    try{
    if (!req.session.user) return res.sendStatus(403)
    users.getallreservation((err, user) => {
		console.log(user)
        if (err) res.sendStatus(500)
        else if (user.errno) res.sendStatus(500)
        else if (!user.length) res.sendStatus(404)
        else{
            console.log('get all reservation : ok');
            res.send(user);
        }
    })}
    catch(err ){
        res.status(400).json({ error: 'get all reservation error' })
    }

}

// update reservation status
exports.updatereservationstatus = (req, res) => {
    try{
    if (!req.session.user) return res.sendStatus(403)
    users.updatereservationstatus(req.body.reservation_id, req.body.status, (err, user) => {
        if (err) res.sendStatus(500)
        else if (user.errno) res.sendStatus(500)
        else{
            console.log('update reservation status : ok');
            res.send(user);
        }
    })}
    catch(err ){
        res.status(400).json({ error: 'upate reservation status error' })
    }

}

// update product
exports.updateproduct = (req, res) => {
    try{
    if (!req.session.user) return res.sendStatus(403)
    var tempdata = req.body
    var product_id = req.body.product_id
    delete tempdata.product_id
    users.updateproduct(product_id, tempdata, (err, user) => {
        if (err) res.sendStatus(500)
        else if (user.errno) res.sendStatus(500)
        else{
            console.log('update reservation status : ok');
            res.send(user);
        }
    })}
    catch(err ){
        res.status(400).json({ error: 'upate product error' })
    }

}

// update product image
exports.updateproductimg = (req, res) => {
    try{
    if (!req.session.user) return res.sendStatus(403)
    var id = req.body.product_id
    var image = "https://luzzysupremesweets.shop/backluzzy/" + req.file.path
    var moo = req.body.old_img.slice(22)
    users.updateproductimg(id, image, (err, user) =>{
        if (err) res.sendStatus(500)
        else if (user.errno) res.sendStatus(500)
        else{
            console.log('update reservation status : ok');
            unlinkAsync(moo)
            res.sendStatus(200)
        }
    })}
    catch(err ){
        res.status(400).json({ error: 'upate product image error' })
    }

}

// get order by user
exports.getorderbyuser = (req, res) => {
    try{
    if (!req.session.user) return res.sendStatus(403);
    users.getorderbyuser(req.session.user, (err, user) =>{
        if (err) res.sendStatus(500)
        else if (user.errno) res.sendStatus(500)
        else{
            console.log('get order by user : ok');
            res.send(user);
        }
    })}
    catch(err ){
        res.status(400).json({ error: 'get order by user error' })
    }

}

// select
exports.buildselect = (req, res) => {
    try{
    if (!req.session.user) return res.sendStatus(403);
    users.buildselect((err, user) => {
        if(err) res.sendStatus(500)
        else if (user.errno) res.sendStatus(500)
        else{
            console.log('get build select : ok');
            res.send(user);
        }
    })}
    catch(err ){
        res.status(400).json({ error: 'build select error' })
    }

}

// add select
exports.addbuildselect = (req, res) => {
    try{
    if (!req.session.user) return res.sendStatus(403);
    var data ={
        id : req.body.id,
        name : req.body.name,
        price : req.body.price,
        image : req.body.image == "" ? '' : !req.file ? req.body.image : "https://luzzysupremesweets.shop/backluzzy/" + req.file.path 
    }
    users.addbuildselect(data, (err, user) => {
        if(err) res.sendStatus(500)
        else if (user.errno) res.sendStatus(500)
        else{
            console.log('add build select : ok');
            res.send(user);
        }
    })}
    catch(err ){
	console.log(err)
        res.status(400).json({ error: 'add build select error' })
    }

}

// edit select
exports.editbuildselect = (req, res) => {
    try{
    if (!req.session.user) return res.sendStatus(403);
    var temp
    if (req.body.image == ""){
        temp = {
            name : req.body.name,
            price : req.body.price,
        }
    }
    else{
        temp = {
            name : req.body.name,
            price : req.body.price,
            image : req.body.image == "" ? '' : !req.file ? req.body.image : "https://luzzysupremesweets.shop/backluzzy/" + req.file.path
        }
    }
    users.editbuildselect(req.body.id, temp, (err, user) => {
        if(err) res.sendStatus(500)
        else if (user.errno) res.sendStatus(500)
        else{
            console.log('edit build select : ok');
            res.send(user);
        }
    })}
    catch(err ){
        res.status(400).json({ error: 'edit build select error' })
    }

}

// delete select
exports.deletebuildselect = (req, res) => {
    try{
    if (!req.session.user) return res.sendStatus(403);
    users.deletebuildselect(req.params.id, (err, user) => {
        if(err) res.sendStatus(500)
        else if (user.errno) res.sendStatus(500)
        else{
            console.log('delete build select : ok');
            res.send(user);
        }
    })}
    catch(err ){
        res.status(400).json({ error: 'delete build select error' })
    }

}

// update reservation price
exports.updatereservationprice = (req, res) => {
    try{
    if (!req.session.user) return res.sendStatus(403);
    users.updatereservationprice(req.body.order_id, req.body.price, (err, user) => {
        if(err) res.sendStatus(500)
        else if (user.errno) res.sendStatus(500)
        else{
            console.log('update price: ok');
            res.sendStatus(200);
        }
    })}
    catch(err ){
        res.status(400).json({ error: 'update reservation price error' })
    }

}

//change password
exports.changepassword = (req, res) => {
	try{
		if (!req.session.user) return res.sendStatus(403);
		let tempass = req.body.newpass
		let oldpass = req.body.oldpass
		console.log('old pass : ', oldpass)
		console.log('new pass : ', tempass)
		users.getaccount(req.session.user, async(err, user) => {
			if (err) res.sendStatus(500);
			else if (user.errno) res.sendStatus(500);
			else if (!user.length) res.sendStatus(403);
			else{
				let passhold = user[0].password;
				try{
					if (await bcrypt.compare(oldpass, passhold)){
						// save updated password
						const hashedPassword = await bcrypt.hash(tempass, 10);
						tempass = hashedPassword;
						console.log('new : ',tempass)
						users.updatepass(req.session.user, tempass, (err, resu) => {
							if (err) res.sendStatus(500)
							else res.sendStatus(200)
						})
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
	catch(err) {
		res.status(400).json({ error: 'change password error' })
	}
}

// get all myorders
exports.myorders = (req, res) => {
	try{
		if (!req.session.user) return res.sendStatus(403);
		users.myshoporders(req.session.user, async (err, asd) => {
			if (err) return res.sendStatus(500)
			else if (asd.errno) return res.sendStatus(500)
			else{
				res.send(asd)
			}
		})
	}
	catch(err){
		console.log(err)
		res.status(400).json({ error: 'my all shop order error' })
	}
}

// track order
exports.trackme = (req, res) => {
	users.trackme(req.params.id, (err, asd) => {
		if (err) return res.sendStatus(500)
		else if (asd.errno) return res.sendStatus(500)
		else if (!asd.length) return res.sendStatus(404)
		else res.send(asd)
	})
}

// my all reservation order
exports.myallreservationorder = (req, res) => {
	users.myreserveorders(req.session.user, async (err, asd) => {
		if (err) return res.sendStatus(500)
		else if (asd.errno) return res.sendStatus(500)
		else{
			res.send(asd)
		}
	})
}

// my all custom order
exports.myallcustomorder = (req, res) => {
	users.myorders(req.session.user, async(err, asd) => {
		if (err) return res.sendStatus(500)
		else if (asd.errno) return res.sendStatus(500)
		else{
			res.send(asd)
		}
	})
}
