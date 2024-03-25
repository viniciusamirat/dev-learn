"use strict";
var a = document.querySelector('#ancora');
if (a instanceof HTMLAnchorElement) {
    a.href = 'teste';
}
var as = document.querySelectorAll('.links');
as.forEach(function (item) {
    if (item instanceof HTMLAnchorElement) {
        item.href = 'teste 2';
    }
});
