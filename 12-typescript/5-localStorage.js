"use strict";
var input = document.querySelector('input');
var oldValue = localStorage.getItem('valor');
input.value = oldValue;
function totalMudou() {
    var p = document.querySelector('p');
    localStorage.setItem('valor', input.value);
    p.innerText = "ganho total ".concat(Number(input.value) + 100);
}
input === null || input === void 0 ? void 0 : input.addEventListener('keyup', totalMudou);
