const express = require('express');
const connection = require('./db/connection');

const app = express();

app.use(express.json());

app.get('/staff', async (req, res) => {
   const [result] = await connection.execute('SELECT * FROM staff');

   return res.status(200).json(result);
});

module.exports = app;