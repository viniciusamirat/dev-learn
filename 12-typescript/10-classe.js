"use strict";
var Product = /** @class */ (function () {
    function Product(nome, idade) {
        this.nome = nome;
    }
    return Product;
}());
var produto = new Product('teclado');
console.log(produto);
console.log(produto instanceof Product);
var Livro = /** @class */ (function () {
    function Livro(autor) {
        this.autor = autor;
    }
    return Livro;
}());
