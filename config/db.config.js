const mysql = require('mysql');

const con = mysql.createConnection({
    host: process.env.API_HOST,
    user: process.env.API_USER,
    password: process.env.API_PASSWORD,
    database: process.env.API_DATABASE,
    multipleStatements: true
});

con.connect((err) => {
    if (err) throw err;
    console.log("Database connected.");
})

module.exports = con;