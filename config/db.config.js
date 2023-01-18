const mysql = require('mysql2');

const con = mysql.createConnection({
    host: process.env.API_HOST,
    user: 'root',
    password: process.env.API_PASSWORD,
    database: process.env.API_DATABASE,
    multipleStatements: true
});

con.connect((err) => {
    if (err) throw err;
    console.log("Database connected.");
})

module.exports = con;