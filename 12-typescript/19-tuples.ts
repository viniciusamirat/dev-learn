interface IMarcaCor {
  marca: string;
  cor: string;
}

type Venda = [string, number, string, IMarcaCor]

async function fetchData(){

  const response = await fetch('https://api.origamid.dev/json/vendas.json')

  const vendas = await response.json()

  somar(vendas)

}

function somar(vendas: Venda[]) {
  const soma = vendas.reduce((anterior, atual) => {
    anterior += atual[1]
  }, 0)

  console.log(soma)

}

fetchData()