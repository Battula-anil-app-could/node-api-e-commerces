const mysql = require('mysql2/promise');
// ip addr show eth0 | grep inet | awk '{ print $2; }' | sed 's/\/.*$//'
const dbConnect = async () => {
  try {
    const connection = await mysql.createConnection({
      host: '192.168.167.62',
      user: 'root',
      password: 'BATTULAvarshini@36',
      database: 'e_commerces_page'
    });
    console.log('Database connection established');
    return connection;
  } catch (error) {
    console.error('Database connection failed:', error);
    return null;
  }
};


module.exports = dbConnect;


