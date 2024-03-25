class Product {
  nome: string;
  idade?: number;
  
  constructor(nome: string, idade?: number) {
    this.nome = nome
  }

}

const produto = new Product('teclado')

console.log(produto)

console.log(produto instanceof Product)

class Livro {
  autor: string;

  constructor(autor: string) {
    this.autor = autor
  }
}