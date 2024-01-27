const contactsRepository = require('../repositories/contactsRepository');

class ContactController {
  index(req, res) {
    const contacts = contactsRepository.findAll()

    return res.json(contacts)
  }

  async show(req, res) {
    const { id } = req.params

    const contact = await contactsRepository.findById(id)

    if (!contact) {
      return res.status(404).json()
    }

    return res.json(contact)
  }

  store(req, res) {

  }

  update(req, res) {

  }

  async delete(req, res) {
    const { id } = req.params

    const contact = contactsRepository.findById(id)

    if (!contact) {
      return res.status(404)
    }

    await contactsRepository.delete(id)

    return res.sendStatus(204)
  }
}

/*
pattern singleton

Basicamente ele funciona assim: Toda vez que algum módulo importar esse arquivo, ele vai estar
usando uma instancia da classe, tal qual foi criada a primeira vem que foi importada,
ou seja, depois da primeira, todas as novas importações vão utilizar a instância que
já está em memória
*/
module.exports = new ContactController();
