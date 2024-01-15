/*
const admin = require('firebase-admin');
const serviceAccount = require('./path/serviceAccountKey.json');

// Inicializa o Firebase Admin SDK com as credenciais do serviceAccount
admin.initializeApp({
  credential: admin.credential.cert(serviceAccount),
});

const db = admin.firestore();

// Referência à coleção 'logins'
const loginsRef = db.collection('logins');

// Função para criar um novo registro de login
const createLogin = async (data) => {
  try {
    const docRef = await loginsRef.add(data);
    console.log('Registro de login criado com ID:', docRef.id);
    return docRef.id;
  } catch (error) {
    console.error('Erro ao criar registro de login:', error);
  }
};

// Função para ler informações de um registro de login por ID
const getLoginById = async (loginId) => {
  try {
    const doc = await loginsRef.doc(loginId).get();
    if (!doc.exists) {
      console.log('Registro de login não encontrado.');
      return null;
    }
    console.log('Dados do registro de login:', doc.data());
    return doc.data();
  } catch (error) {
    console.error('Erro ao obter registro de login:', error);
  }
};

// Função para atualizar informações de um registro de login por ID
const updateLoginById = async (loginId, newData) => {
  try {
    await loginsRef.doc(loginId).update(newData);
    console.log('Registro de login atualizado com sucesso.');
  } catch (error) {
    console.error('Erro ao atualizar registro de login:', error);
  }
};

// Função para excluir um registro de login por ID
const deleteLoginById = async (loginId) => {
  try {
    await loginsRef.doc(loginId).delete();
    console.log('Registro de login excluído com sucesso.');
  } catch (error) {
    console.error('Erro ao excluir registro de login:', error);
  }
};

// Exemplos de uso das funções
const main = async () => {
  const newLoginData = {
    username: 'john_doe',
    password: 'secure_password',
  };

  const newLoginId = await createLogin(newLoginData);

  const loginInfo = await getLoginById(newLoginId);

  if (loginInfo) {
    // Atualiza o registro de login
    await updateLoginById(newLoginId, { password: 'new_password' });

    // Exclui o registro de login
    await deleteLoginById(newLoginId);
  }
};

main();
*/