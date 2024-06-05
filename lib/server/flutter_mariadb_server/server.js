const express = require('express');
const mysql = require('mysql2');
const cors = require('cors');
const app = express();


app.use(cors());
// Middleware to parse JSON requests
app.use(express.json());

// Create a connection pool
const pool = mysql.createPool({
    host: 'localhost', // or your server's IP address
    user: 'solo1',
    password: 's',
    database: 'flutter_app'
});

// Endpoint to get properties
app.get('/properties', (req, res) => {
    console.log('Received GET request for /properties');
    pool.query('SELECT * FROM properties', (error, results) => {
      if (error) {
        console.error('Error executing query:', error);
        return res.status(500).json({ error: 'Internal Server Error' });
      }
      console.log('Query results:', results);
      res.json(results);
    });
  });

// Endpoint to add a new property
app.post('/properties', (req, res) => {
    const { image, price, description, for_sale, for_rent, location, agent_id } = req.body;
    console.log('Received POST request for /properties with data:', req.body);
    pool.query(
      'INSERT INTO properties (image, price, description, for_sale, for_rent, location, agent_id) VALUES (?, ?, ?, ?, ?, ?, ?)',
      [image, price, description, for_sale, for_rent, location, agent_id],
      (error, results) => {
        if (error) {
          console.error('Error executing query:', error);
          return res.status(500).json({ error: 'Internal Server Error' });
        }
        console.log('Insert results:', results);
        res.json({ id: results.insertId });
      }
    );
  });

// Start the server
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});
