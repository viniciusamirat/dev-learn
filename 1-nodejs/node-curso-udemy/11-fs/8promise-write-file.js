const {writeFile} = require('fs');

function criaArquivo(name, content){

    return new Promise((resolve, reject)=>{

        writeFile(name, content, err=>{
            if (err) return reject(err);

            resolve();
        })

    })
}

criaArquivo('testeee.txt', 'conteudo').then(()=>{
    console.log('arquivo criado com promisse');
}).catch((error)=>{
    console.log(`algo deu errado: ${error}`)
})