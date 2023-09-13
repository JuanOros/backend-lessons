const express = require('express');
const staffModel = require('./models/staff.model');
const paymentModel = require('./models/payment.model');

const app = express();

app.use(express.json());

app.get('/staff', async (req, res) => {
   const staff = await staffModel.findAll();

   return res.status(201).json(staff);
});

app.get('/staff/:id', async (req, res) => {
  const { id } = req.params;
  const staff = await staffModel.findByPk(id);

  return res.status(201).json(staff);
});

app.post('/payment', async (req, res) => {
  const payment = await paymentModel.patchOne(req.body);

  return res.status(200).json(payment);
});

module.exports = app;