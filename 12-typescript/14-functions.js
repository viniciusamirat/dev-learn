"use strict";
//funções que tem um retorno never sempre irão abortar algo
function abortar(mensagem) {
    throw new Error(mensagem);
}
function normalizar(valor) {
    if (typeof valor === 'number') {
        return Number(valor.toFixed());
    }
    else {
        return String(valor).split(',').map(function (item) { return Number(item); });
    }
}
