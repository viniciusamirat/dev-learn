const http = require('http');

const hostname = '127.0.0.1';

const port = 3000;

const url = `http://${hostname}:${port}/`;

const server = http.createServer((req, res)=>{
    res.statusCode = 200;
    res.setHeader('Content-Type', 'text/html');
    res.end('<h1>Bem-vindo <b>Node Js<b/><h1/>')
})


server.listen(port, hostname, ()=>{
    console.log(`O servidor está rodando em: ${url}`)
})