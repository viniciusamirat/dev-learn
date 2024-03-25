interface InterfaceProduct {
  nome: string;
  preco: number;
  descricao: string;
  empresaFabricante: {
    fundacao: number;
    nome: string;
    pais: string;
  }
}

//Interface é usada para criar objetos e type é usado para funções e casos mais simples

async function getProducts() {
  const res = await fetch('https://api.origamid.dev/json/notebook.json')
  const product = await res.json()
  console.log(product)
  printProduct(product)
}

function printProduct(product: InterfaceProduct) {
  
  let p = document.querySelector('p')

  if (p) {
    p.innerHTML = `
    <p>${product.nome}</p>
    <p>${product.preco}</p>
    <p>${product.descricao}</p>
    `
  }
  
}

getProducts()