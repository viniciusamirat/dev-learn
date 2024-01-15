const fs = require('fs');

//assincrona
fs.readFile('text.txt', (err, data)=>{
    if (err) throw err;

    console.log(data.toString());
})


//sincrona
const texto = fs.readFileSync('text.txt');

console.log(`text: ${texto}`);