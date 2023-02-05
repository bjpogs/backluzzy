const express = require('express')
const router = express.Router();
const multer = require('multer')
const path = require('path')
const controller = require('../controller/controllers');
const {authenticateToken} = require('../../auth/token_validation')

const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, 'Images')
    },
    filename:(req, file, cb) => {
        return cb(null, file.fieldname + "-" + Date.now() + path.extname(file.originalname))
    }
})

const upload = multer({
    storage: storage,
    limits: { fileSize: '1000000'},
    fileFilter: (req, file, cb) => {
        const fileTypes = /jpeg|jpg|png|gif|jfif/
        const mimeType = fileTypes.test(file.mimetype)
        const extname = fileTypes.test(path.extname(file.originalname))

        if(mimeType && extname) {
            return cb(null, true)
        }
        cb('Give proper files format to upload');
    }
})


// default route
router.get('/', controller.default);

// login
router.post('/login', controller.checkCredentials);

// add admin
router.post('/superpoweraddadmin', controller.superpoweraddadmin);

// retrieve products
router.get('/getallproducts', controller.getallproducts);

// retrieve products by category
router.get('/getproductbycategory/:id', controller.getproductbycategory);

// add product
router.post('/addproduct', upload.single('product_image'), controller.addproduct);

// retrieve product by id
router.get('/getproductbyid/:id', controller.getproductbyid);

// reservation
router.post('/reservecake', upload.single('image'), controller.reservecake);

// refresh token
router.post('/refreshmeow', controller.meowrefreshtoken);

//logut
router.post('/logout', authenticateToken, controller.logout);

// get user info
router.get('/getuserinfo', authenticateToken, controller.getuserinfo);

// save user info
router.post('/updateuserinfo', authenticateToken, controller.updateuserinfo);

// delete prduct
router.delete('/deleteproduct/:id',  authenticateToken, controller.deleteproduct);

// process order
router.post('/saveorder', authenticateToken, controller.saveorder);

// add to cart
router.post('/addtocart', authenticateToken, controller.addtocart);

// retrieve cart
router.get('/shoppingcart', authenticateToken, controller.shoppingcart);

// remove item from cart
router.post('/deletefromcart', authenticateToken, controller.deletefromcart);

// place order
router.post('/placeorder', authenticateToken, controller.placeorder);

// register
router.post('/register', controller.register);

// save custom
router.post('/savecustom', authenticateToken, controller.savecustom);

// retrieve all build cake orders
router.get('/allbuildorders', authenticateToken, controller.getallbuildorders);

// retrieve all regular orders
router.get('/allorders' , authenticateToken, controller.getallorders);

// update status
router.post('/updatestatus', authenticateToken, controller.updatestatus);

// retrieve all reservation orders
router.get('/allreservation', authenticateToken, controller.getallreservation);

// update reservation status
router.post('/updatereservationstatus', authenticateToken, controller.updatereservationstatus);

// update product
router.post('/updateproduct', authenticateToken, controller.updateproduct)

// update product image
router.post('/updateproductimg', upload.single('product_image'), authenticateToken, controller.updateproductimg)

// get all orders from user 
router.get('/orderbyuser', authenticateToken, controller.getorderbyuser)

// get all option for build a cake
router.get('/buildselect', authenticateToken, controller.buildselect)

// add select
router.post('/addbuildselect', upload.single('image'), authenticateToken, controller.addbuildselect)

// edit select
router.post('/editbuildselect', upload.single('image'), authenticateToken, controller.editbuildselect)

// delete select
router.delete('/deletebuildselect/:id', authenticateToken, controller.deletebuildselect)

// update reservation price
router.post('/updatereservationprice', authenticateToken, controller.updatereservationprice)

module.exports = router;

// need to fix : cart ( mode of order : reservation or order direct. )
// admin interface.
