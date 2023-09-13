const connection = require('./connection');

const findAll = async () => {
  const [result] = await connection.execute('SELECT * FROM payment');

  return result;
};

const findByPk = async (id) => {
  const [result] = await connection.execute('SELECT * FROM payment WHERE id = ?', [id]);

  return result;
};

const patchOne = async ({ billNumber, paymentType, otherDetails }) => {
  console.log(billNumber, paymentType, otherDetails);
  await connection.execute(`
    INSERT INTO payment (billNumber, paymentType, otherDetails)
    VALUES (?, ?, ?)`, [billNumber, paymentType, otherDetails]);

  return {
    billNumber,
    paymentType,
    otherDetails,
  };
};

module.exports = {
  findAll,
  findByPk,
  patchOne,
};