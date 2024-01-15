const fs =require('fs');

//o recusive true significa que está permitida a criação de subpastas caso não existam
fs.mkdir('projeto/assets/images', {recursive: true}, (err, data)=>{
    if (err) throw err;

    console.log('diretório criado com sucesso');

})