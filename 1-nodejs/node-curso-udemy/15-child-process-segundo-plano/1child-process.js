const { spawn } = require('child_process')
const ls = spawn('ls')

ls.stdout.on('data', (data)=>{
    console.log(`dados encontrados ${data}`);
})

ls.stderr.on('data', (data)=>{
    console.log(`error: ${data}`)
})

ls.on('close', (code)=>{
    console.log(`processo em segundo plano encerrado com o cod: ${code}`)
})

