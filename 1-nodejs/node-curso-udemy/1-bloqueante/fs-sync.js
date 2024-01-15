//bloqueante

const fs = require("fs");

const dados = fs.readFileSync("file.txt");

console.log("executando o console apos a leitura do arquivo")