const mysql = require('mysql2');

const con = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'luzzydb',
    multipleStatements: true
});

con.connect((err) => {
    if (err) throw err;
    console.log("Database connected.");
})

module.exports = con;