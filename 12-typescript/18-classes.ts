class Produto {
  private tipo = 'produto';
  protected nome: string;
  readonly preco: number;
  constructor(nome: string, preco: number) {
    this.nome = nome
    this.preco = preco
  }

  getNome(){
    return this.nome
  }

  //quando algo é declarado como static dentro de uma classe, somente a classe terá acesso a ele
  //se chamar livro.transformarPreco não vai funcionar
  //mas se chamar Produto.transformarPreco funciona
  static transformarPreco(preco: number) { 
    return preco * 2
  }
}

const livro = new Produto('Senhor dos aneis', 50)