const {promisify} = require('util')

//dessa forma eu tenho o módulo writeFile já vindo como uma promise
const writeFile = promisify(require('fs').writeFile);

const conteudo = 'teste tes teste teste'

//como agora ele é uma promise eu não preciso mais passar a callback, posso usar o then e o catch
writeFile('itil.txt', conteudo).then((result)=>{
    console.log('arquivo criado com sucesso')
}).catch((error)=>{
    console.log('deu algo errado: ', error)
})