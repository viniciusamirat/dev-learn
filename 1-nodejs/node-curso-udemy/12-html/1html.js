const http = require('http')
const {readFile} = require('fs')

const hostname = '127.0.0.1';
const port = '3000';
const url = `http://${hostname}:${port}/`

let conteudo = '';

readFile('index.html', (err, data)=>{
    if (err) throw err;

    conteudo = data;
})

const server = http.createServer((req, res)=>{
    res.statusCode = 200;
    res.setHeader('Content-Type', 'text/html');
    res.end(conteudo);
})

server.listen(port, hostname, ()=>{
    console.log('servidor em execução em: ', url);
})