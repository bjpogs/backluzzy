const express = require('express');
const cors = require('cors');
const helmet = require('helmet');
const cookieParser = require("cookie-parser");
const sessions = require('express-session');
const app = express();
const path = require('path')

app.use(cors({
    origin: ["http://185.201.9.29/","http://www.luzzysupremesweets.shop","http://localhost:3000"],
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
    cookie: { maxAge: 1000 * 60 * 60 * 24, secure: false },
    resave: false
}));

const options = {
    host: '127.0.0.1',
    user: 'root',
    password: '@Kaguya26',
    database: 'luzzydb'
};
/*
app.use(sessions({
	key:'usermeowmeow',
	secret: 'kaguya shinomiya is the best!',
	proxy: true,
	cookie: {httpOnly:true,secure:false,MaxAge: oneDay,sameSite:'none'},
	resave: false,
	saveUninitialized: false
})) */

app.use((error, req, res, next) => {
    const message = `This is the unexpected field -> "${error.field}"`
    console.log('awit');
    return(res.status(500).send(message))
})


app.use('/backluzzy/Images', express.static('/root/luzzy/backluzzy/Images'))

app.use(express.static(path.join(__dirname, 'Images')))



// root route
app.get('/', (req, res) => {
    res.send('hello world!');
});

app.get('/backluzzy/fuck', (req, res) => {
	res.send('fucker!');
});

const getroutes = require('./src/routes/routes');
app.use('/backluzzy/api/', getroutes);


app.use(function(req, res, next) {
    console.log("?");
    res.sendStatus(404);
});




const port = process.env.PORT || 4000;
app.listen(port, () => {
    console.log(`Express is running at port ${port}`);
})



// task : sleep zZ
