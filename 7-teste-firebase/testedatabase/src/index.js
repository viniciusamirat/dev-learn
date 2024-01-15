import {db, admin} from './config.js'

import formatarData from './toDate.js'

let loginRef = db.collection('users')

const getUsers = async ()=>{

  try{

    const querySnapshot = await loginRef.where('email', '==', 'vinicius2@gmail.com').get()

    const docs = []

    querySnapshot.forEach((doc)=>{
      docs.push(doc._fieldsProto)
    })

    console.log(docs[0].email.stringValue)


  } catch(err){
    console.log(err)
  }

}

const createUser = async (user)=>{
  try {
    const docRef = await loginRef.add(user)

    console.log('Registro de login criado com ID:', docRef.id);

  } catch (error) {
    console.log(`Erro ao criar usuário: ${error}`)
  }
}

const getUserByEmail = async (email)=>{
  try {
  const doc = await loginRef.where('email', '==', email).get()

  const docs = []

  doc.forEach((item)=>{
    docs.push(item._fieldsProto)
  })

  console.log(docs[0].date_update)

  } catch (error) {
    console.log(`Erro ao consultar usuário: ${error}`)
  }
}

const updateUser = async (email, user)=>{
  try {
    
    const doc = await loginRef.where('email', '==', email).get()

    let docs = []

    doc.forEach((item)=>{
      docs.push(item)
    })

    if (docs.length != 1){
      console.log('usuário não encrontrado ou duplicado')
      return;
    }

    try{

      await docs[0].ref.update(user)
      console.log('usuário atualizado')

    } catch (error){
      console.log(`Erro ao atualizar usuário: ${error}`)
    }

    console.log('registro atualizado')

  } catch (error) {
    console.log(`Erro ao encontrar usuário: ${error}`)
  }
}

//getUsers()

// createUser({
//   email: 'teste add',
//   password: 'teste pass',
//   name: 'teste name'
// })
 
// getUserByEmail('vinicius@gmail.com')

// updateUser('vinicius@gmail.com', {
//   name: 'vini 2',
//   password: '321',
//   date_update: admin.firestore.Timestamp.fromDate(new Date())
// })
