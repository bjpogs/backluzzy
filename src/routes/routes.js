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
router.post('/refreshmeow', controller.meowrefreshtoken)

// retrieve all reservation


module.exports = router;