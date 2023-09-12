const app = require('./app');
const connection = require('./db/connection');

const PORT = 3001;

console.log(process.env.MYSQL_HOST);
console.log(process.env.MYSQL_PORT);

app.listen(PORT, async () => {
  console.log(`backend está sendo executada na porta ${PORT}`);

  const [result] = await connection.execute('SELECT 1');
  console.log(result);
});