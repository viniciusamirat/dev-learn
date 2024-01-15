const {writeFile} = require('fs').promises

const conteudo = 'teste tes teste teste'

//como agora ele é uma promise eu não preciso mais passar a callback, posso usar o then e o catch
writeFile('itil.txt', conteudo).then((result)=>{
    console.log('arquivo criado com sucesso')
}).catch((error)=>{
    console.log('deu algo errado: ', error)
})

//dessa segunda forma é melhor, pois não precisa do util e é mais novo