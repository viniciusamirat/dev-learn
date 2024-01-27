const { uuid } = require('uuidv4')

const contacts = [
  {
    id:uuid(),
    name: 'Vinicius',
    email: 'vinicius@gmail',
    phone: '999999999',
    category_id: uuid()
  },
  {
    id: '1',
    name: 'Vinicius2',
    email: 'vinicius@gmail',
    phone: '999999999',
    category_id: uuid()
  }
]

class ConstactsRepository {

  findAll() {
    return contacts
  }

  async findById(id) {
    return new Promise((resolve, reject) => {
      return resolve(contacts.find((item) => item.id === id))
    })
  }

  async delete(id) {
    return new Promise((resolve, reject) => {
      contacts.filter((item) => item.id !== id)
      resolve()
    })
  }
}

module.exports = new ConstactsRepository()
