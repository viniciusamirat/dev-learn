//Agora para objetos

interface Produto {
  nome: string;
  valor: number;
}

async function getProduto() {
  
  const data = await fetch('seu link')

  const produto = await data.json()

  handleProdutos(produto)
}

function isProduto(value: unknown): value is Produto {

  if (value && (typeof value === 'object') && ('nome' in value) && ('valor' in value)) {
    return true
  } else {
    return false
  }

}

//nessa função eu preciso verificar se data é um produto com base na interface, porém não é possivel usar instaceof de interface
//então vamos usar o type guard acima
function handleProdutos(data: unknown) {

  if (isProduto(data)) {
    console.log(data.nome)
  }

}