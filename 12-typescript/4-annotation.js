"use strict";
var produto = 'livro';
var preco = 20;
var carro = {
    marca: 'audi',
    portas: 5
};
var barato = preco < 400 ? true : 'caro';
// o typescript trabalha com inferencia, ou seja, não preciso ficar declarando qual o tipo da variavel que ele já vai entender
var produto2 = 3;
var carro2 = {
    marca: 'audi',
    portas: 5
};
function somar(a, b) {
    return "".concat(a + b);
}
somar(3, 5);
var nintendo = {
    nome: 'nintendo',
    preco: 3000
};
function mudarPreco(produto) {
    return produto.preco = produto.preco * 2;
}
mudarPreco(nintendo);
