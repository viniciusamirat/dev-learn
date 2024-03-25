type NumberOrString = number | string

let total: NumberOrString = 10

type Produto = {
  nome: string;
  preco: number;
  teclado: boolean;
}

function preencherDados(dados: Produto) {
  document.body.innerHTML = `
    <div>${dados.nome}</div>
    <div>${dados.preco}</div>
    <div>${dados.teclado}</div>
  `
}

preencherDados({
  nome: 'computador',
  preco: 100,
  teclado: true
})

type Categorias = 'tech' | 'design' | 'psico'

function printarCategoria(categoria: Categorias) {
  console.log(categoria)
}

printarCategoria('psico')