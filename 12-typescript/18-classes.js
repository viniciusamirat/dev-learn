"use strict";
var Produto = /** @class */ (function () {
    function Produto(nome, preco) {
        this.tipo = 'produto';
        this.nome = nome;
        this.preco = preco;
    }
    Produto.prototype.getNome = function () {
        return this.nome;
    };
    //quando algo é declarado como static dentro de uma classe, somente a classe terá acesso a ele
    //se chamar livro.transformarPreco não vai funcionar
    //mas se chamar Produto.transformarPreco funciona
    Produto.transformarPreco = function (preco) {
        return preco * 2;
    };
    return Produto;
}());
var livro = new Produto('Senhor dos aneis', 50);
