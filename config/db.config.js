const mysql = require('mysql2');

const con = mysql.createConnection({
    host: '127.0.0.1',
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
