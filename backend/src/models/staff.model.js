const connection = require('./connection');

const findAll = async () => {
  const [result] = await connection.execute('SELECT * FROM staff');

  return result;
};

const findByPk = async (id) => {
  const [result] = await connection.execute('SELECT * FROM staff WHERE id = ?', [id]);

  return result;
};

module.exports = {
  findAll,
  findByPk,
};
