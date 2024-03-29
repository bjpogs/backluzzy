'use strict';
var con = require('../../config/db.config')

const Users = () => {}

// add admin 
Users.superpoweraddadmin = (userdata, result) => {
    con.query('insert into usertbl set ?', userdata, (err, res) => {
        if (err) result(null, err);
        else result(null, res);
    })
}

// login	
Users.checkCredentials = (username, result) => {
    con.query('select * from usertbl where username = ?', username, (err, res) => {
        if (err) result(null, err);
        else result(null, res);
    })
}

// get first name
Users.getbasic = (user_id, result) => {
    con.query('select * from userinfotbl where user_id = ?', user_id, (err, res) => {
        if (err) result(null, err);
        else result(null, res);
    })
}

// get all products
Users.getallproducts = (result) => {
    con.query('select * from producttbl order by if(product_category RLIKE "[a-z]", 1 , 2), product_subcategory asc', (err, res) => {
        if (err) result(null, err);
        else result(null, res);
    })
}

// get product by category
Users.getproductbycategory = (id, result) => {
    con.query('select * from producttbl where product_category = ? order by product_name asc', id, (err, res) => {
        if (err) result(null, err);
        else result(null, res);
    })
}

// add product
Users.addproduct = (data, result) => {
    con.query('insert into producttbl set ?', data, (err, res) => {
        if (err) result(null, err);
        else result(null, res);
    })
}

// retrieve product by id
Users.getproductbyid = (id, result) => {
    con.query('select * from producttbl where product_id = ?', id, (err, res) => {
        if (err) result(null, err);
        else result(null, res);
    })
}

// add reservtaion
Users.reservecake = (data, result) => {
    con.query('insert into reservationtbl set ?', data, (err, res) => {
        if (err) result(null, err);
        else result(null, res);
    })
}

// get reservation
Users.getallreservation = (result) => {
    con.query('select * from reservationtbl rt inner join statustbl st on rt.order_id = st.order_id order by rt.placeddate asc', (err, res) => {
        if (err) result(null, err);
        else result(null, res);
    })
}

// get userinfo
Users.getuserinfo = (id, result) => {
    con.query('select * from userinfotbl where user_id = ?', id , (err, res) => {
        if (err) result(null, err);
        else result(null, res);
    })
}

//update userinfo
Users.updateuserinfo = (id, data, result) => {
    con.query('update userinfotbl set ? where user_id = ?', [data, id], (err, res) => {
        if (err) result(null, err);
        else result(null, res);
    })
}

// delete product
Users.deleteproduct = (id, result) => {
    con.query('delete from producttbl where product_id = ?', id, (err, res) => {
        if (err) result(null, err);
        else result(null, res);
    })
}

// add to cart
Users.addtocart = (data, result) => {
    con.query("insert into carttbl set ?", data, (err, res) => {
        if (err) result(null, err);
        else result(null, res);
    })
}

// retrieve shopping cart
Users.shoppingcart = (id, result) => {
    con.query('select * from carttbl ct inner join producttbl pt on ct.product_id = pt.product_id where ct.user_id = ? order by pt.product_name asc', id, (err, res) => {
        if (err) result(null, err);
        else result(null, res);
    })
}

// delete from cart
Users.deletefromcart = (id, result) => {
    con.query('delete from carttbl where user_id = ?', id , (err, res) => {
        if (err) result(null, err);
        else result(null, res);
    })
}

// place order
Users.placeorder = (data, result) => {
    con.query('insert into ordertbl set ?', data, (err, res) => {
        if (err) result(null, err);
        else result(null, res);
    })
}

// add usertbl
Users.adduser = (data, result) => {
    con.query('insert into usertbl set ?', data, (err, res) => {
        if (err) result(null, err);
        else result(null, res);
    })
}

// add userinfo
Users.adduserinfo = (data, result) => {
    con.query('insert into userinfotbl set ?', data, (err, res) => {
        if (err) result(null, err);
        else result(null, res);
    })
}

// add to builcake
Users.savecustom = (data, result) => {
    con.query('insert into buildcaketbl set ?', data, (err, res) => {
        if (err) result(null, err);
        else result(null, res);
    })
}

// get all build orders
Users.getallbuildorders = (result) => {
    con.query('select * from buildcaketbl bt inner join userinfotbl ut on bt.user_id = ut.user_id inner join statustbl st on bt.order_id = st.order_id order by bt.placeddate desc', (err, res) => {
        if (err) result(null, err);
        else result(null, res);
    })
}

// get all orders
Users.getallorders = (result) => {
    con.query('select * from ordertbl ot inner join producttbl bt on ot.product_id = bt.product_id inner join userinfotbl ut on ot.user_id = ut.user_id inner join statustbl st on ot.order_id = st.order_id order by ot.placeddate desc', (err, res) => {
        if (err) result(null, err);
        else result(null, res);
    })
}

// update status
Users.updatestatus = (id, status, result) => {
    con.query('update statustbl set status = ? where order_id = ?', [status, id], (err , res) => {
        if (err) result(null, err);
        else result(null, res);
    })
}

// get all rservation
Users.getallreservation = (result) => {
    con.query('select * from reservationtbl rt inner join statustbl st on rt.order_id = st.order_id order by rt.placeddate desc', (err, res) => {
        if (err) result(null, err);
        else result(null, res);
    })
}

// update reservation status
Users.updatereservationstatus = (id, status, result) => {
    con.query('update statustbl set status = ? where order_id = ?', [status, id], (err, res) => {
        if (err) result(null, err);
        else result(null, res);
    })
}

// update product
Users.updateproduct = (id, data, result) => {
    con.query('update producttbl set ? where product_id = ?', [data, id], (err, res) => {
        if (err) result(null, err);
        else result(null, res);
    })
}

// update product image
Users.updateproductimg = (id, data, result) => {
    con.query('update producttbl set product_image = ? where product_id = ?', [data, id] , (err, res) => {
        if (err) result(null, err);
        else result(null, res);
    })
}

// get product by user
Users.getorderbyuser = (id, result) => {
    con.query('select * from ordertbl ot inner join producttbl pt on ot.product_id = pt.product_id inner join statustbl st on ot.order_id = st.order_id where ot.user_id = ?', id, (err, res) => {
        if (err) result(null, err);
        else result(null, res);
    })
}

// build select
Users.buildselect = (result) => {
    con.query('select * from selecttbl', (err, res) => {
        if (err) result(null, err);
        else result(null, res);
    })
}

// add select
Users.addbuildselect = (data, result) => {
    con.query('insert into selecttbl set ?', data, (err, res) => {
        if (err) result(null, err);
        else result(null, res);
    })
}

// edit select
Users.editbuildselect = (id, data, result) => {
    con.query('update selecttbl set ? where name = ?', [data, id], (err, res) => {
        if (err) result(null, err);
        else result(null, res);
    })
}

// delete select
Users.deletebuildselect = (data, result) => {
    con.query('delete from selecttbl where name = ?', data, (err, res) => {
        if (err) result(null, err);
        else result(null, res);
    })
}

// add to status
Users.addtostatus = (data, result) => {
    con.query('insert into statustbl set ?', data, (err, res) => {
        if (err) result(null, err);
        else result(null, res);
    })
}

// update reservation price
Users.updatereservationprice = (id, price, result) => {
    con.query('update reservationtbl set price = ? where order_id = ?', [price, id], (err, res) => {
        if (err) result(null, err);
        else result(null, res); 
    })
}

// update Password
Users.updatepass = (id, np, result) => {
	con.query('update usertbl set password = ? where user_id = ?', [np, id], (err, res) => {
		if (err) result(null, err);
        else result(null, res); 
	})
}

// get password for change pass
Users.getaccount = (id, result) =>{
	con.query('select password from usertbl where user_id = ?', id, (err, res) => {
		if (err) result(null, err);
        else result(null, res); 
	})
}


Users.trackme = (id, result) => {
	con.query('select * from statustbl where order_id = ?', id, (err, res) => {
		if (err) result(null, err);
        else result(null, res); 
	})
}

Users.myorders = (id, result) => {
	con.query('select * from statustbl st inner join buildcaketbl bt on st.order_id = bt.order_id where st.user_id = ?', id, (err, res) => {
		if (err) result(null, err);
        else result(null, res); 
	})
}
Users.myreserveorders = (id, result) => {
	con.query('select * from statustbl st inner join reservationtbl bt on st.order_id = bt.order_id where st.user_id = ?', id, (err, res) => {
		if (err) result(null, err);
        else result(null, res); 
	})
}
Users.myshoporders = (id, result) => {
	con.query('select * from statustbl st inner join ordertbl bt on st.order_id = bt.order_id inner join producttbl pt on bt.product_id = pt.product_id where st.user_id = ?', id, (err, res) => {
		if (err) result(null, err);
        else result(null, res); 
	})
}


module.exports = Users;