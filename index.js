const express = require('express');
const cors = require('cors');
const helmet = require('helmet');
const cookieParser = require("cookie-parser");
const sessions = require('express-session');
const app = express();
const path = require('path')

app.use(cors({
    origin: ["http://185.201.9.29","http://www.luzzysupremesweets.shop/"],
    methods: ["GET", "POST", "PUT", "DELETE"],
    credentials: true
}));

app.use(helmet({
    crossOriginResourcePolicy: false,
}));

app.use(express.urlencoded({extended:true}));

app.use(express.json());

app.use(cookieParser());


const oneDay = 1000 * 60 * 60 * 24;
app.use(sessions({
    key: "usermeowmeow",
    secret: "kaguya shinomiya is the best!",
    saveUninitialized: true,
    cookie: { maxAge: oneDay },
    resave: false
}));

app.use((error, req, res, next) => {
    const message = `This is the unexpected field -> "${error.field}"`
    console.log(message);
    return(res.status(500).send(message))
})


app.use('/Images', express.static('./Images'))

app.use(express.static(path.join(__dirname, 'Images')))



// root route
app.get('/', (req, res) => {
    res.send('hello world!');
});

const getroutes = require('./src/routes/routes');
app.use('/api/v1', getroutes);


app.use(function(req, res, next) {
    console.log("?");
    res.sendStatus(404);
});




const port = process.env.PORT || 4000;
app.listen(port, () => {
    console.log(`Express is running at port ${port}`);
})



// task : sleep zZ