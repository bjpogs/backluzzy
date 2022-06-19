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
        const fileTypes = /jpeg|jpg|png|gif/
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

// retrieve all reservation
router.get('/getallreservation', controller.getallreservation);

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

module.exports = router;

// need to fix : cart ( mode of order : reservation or order direct. )
// admin interface.