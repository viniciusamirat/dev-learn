"use strict";
var numbers = [1, 2, 3, 4, 5, 6];
var valores = [1, 2, 3, 4, 'teste'];
function maiorQue10(data) {
    return data.filter(function (item) { return item > 10; });
}
function filtrarValores(data) {
    return data.filter(function (item) { return typeof item === 'number'; });
}
console.log(maiorQue10(numbers));
