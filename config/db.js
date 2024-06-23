const mysql = require('mysql2');

const pool = mysql.createPool({
  socketPath: `/cloudsql/stuntingjs:asia-southeast2:stuntingjs`,
  user: 'root',
  password: '', // Add the correct password if there is one
  database: 'capstone_db',
});

module.exports = pool.promise();
