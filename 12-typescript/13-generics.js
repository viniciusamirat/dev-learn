"use strict";
function retorno(a) {
    return a;
}
console.log(retorno('a game'));
//acima eu não consigo saber o que a função vai retornar e teria que usar vários ifs
//com generics
function retorne(a) {
}
console.log(retorne('teste string').toLocaleLowerCase());
var numeros = [1, 2, 3, 4, 5, 6, 7, 7];
function firstFive(lista) {
    return lista.slice(0, 5);
}
console.log(firstFive(numeros));
