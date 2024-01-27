const { Client } = require('pg')

const client = new Client({
  host: 'localhost',
  port: 5432,
  user: 'vini',
  password: '123',
  database: 'mycontacts'
})

client.connect()

exports.query = async (comando) => {
  const { rows } = await client.query(comando)

  return rows
}