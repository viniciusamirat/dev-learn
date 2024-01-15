const fs = require('fs').promises

async function read(name){

    const data = await fs.readFile(name, 'binary');

    return new Buffer.from(data);
}


try {
    read('1create-dir.js').then((data)=>{
        console.log('resultado: ', data.toString())
    })
} catch (error) {
    console.log('algo deu errado: ', error)
}