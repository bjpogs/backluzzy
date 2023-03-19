const express = require('express');
const cors = require('cors');
const helmet = require('helmet');
const cookieParser = require("cookie-parser");
const sessions = require('express-session');
const app = express();
const path = require('path')

app.use(cors({
    origin: ["http://194.31.52.104","https://www.luzzysupremesweets.shop","https://luzzysupremesweets.shop","https://dev.luzzysupremesweets.shop"],
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
    cookie: { maxAge: 86400000, secure: false },
    resave: false
}));

app.use((error, req, res, next) => {
    const message = `This is the unexpected field -> "${error.field}"`
    console.log('awit');
    return(res.status(500).send(message))
})


app.use('/backluzzy/Images', express.static('/root/backluzzy/Images'))

//app.use(express.static(path.join(__dirname, 'Images')))

app.use((req, res, next) => {
  if (req.headers.host.startsWith('www.')) {
    const newHost = req.headers.host.replace('www.', '');
    return res.redirect(301, `${req.protocol}://${newHost}${req.originalUrl}`);
  }
  return next();
});

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
