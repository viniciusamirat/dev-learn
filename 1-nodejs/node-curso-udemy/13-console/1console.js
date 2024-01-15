console.log('normal');

console.error(new Error('um erro'));

const carros = ['gm', 'fiat', 'ford', 'bmw'];

console.table(carros)

const dados = {
    name: 'vinicius',
    idade: 19,
    anoNasc: 2003,
    doc: '123123123'
}

console.table(dados);

//consta quantas vezes passou por um código
console.count('qtd')
console.count('qtd')
console.count('qtd')
console.countReset('qtd')

//contar quanto tempo demora pra finalizar um processo
console.time('teste')
console.timeEnd('teste')