"use strict";
var total = 10;
function preencherDados(dados) {
    document.body.innerHTML = "\n    <div>".concat(dados.nome, "</div>\n    <div>").concat(dados.preco, "</div>\n    <div>").concat(dados.teclado, "</div>\n  ");
}
preencherDados({
    nome: 'computador',
    preco: 100,
    teclado: true
});
function printarCategoria(categoria) {
    console.log(categoria);
}
printarCategoria('psico');
