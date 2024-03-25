const produto: string = 'livro'
const preco: number = 20

const carro: {
  marca: string;
  portas: number;
} = {
  marca: 'audi',
  portas: 5
}

const barato: boolean | string = preco < 400 ? true : 'caro'

// o typescript trabalha com inferencia, ou seja, não preciso ficar declarando qual o tipo da variavel que ele já vai entender

const produto2 = 3

const carro2 = {
  marca: 'audi',
  portas: 5
}

function somar(a: number, b: number): string {
  return `${a + b}`
}

somar(3, 5)

const nintendo = {
  nome: 'nintendo',
  preco: 3000
}

function mudarPreco(produto: {nome: string, preco: number}){
  return produto.preco = produto.preco * 2
}

mudarPreco(nintendo)