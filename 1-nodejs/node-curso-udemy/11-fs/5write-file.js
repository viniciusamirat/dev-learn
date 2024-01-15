const {writeFile} = require('fs');

writeFile('teste.txt', 'conteudodo arquivo', err =>{
    if (err) throw err;

    console.log('arquivo criado e com conteúdo')
})


