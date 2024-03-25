async function getCursos(){
  const res = await fetch('https://algumendpoint.com')
  const cursos = await res.json()
  return cursos
}

function handleCursos(data: unknown) {
  if (data instanceof Array) {
    console.log('é um array')
  }

  //ou 

  if (Array.isArray(data)) {
    console.log('é um array')
  }

  //porém, nessa segunda opção, o retorno de isArray é arg is any, isso não é um problema, só precisa ser entendido
  //segue um exemplo abaixo
}

function isString(value: unknown) {
  return typeof value === 'string'
}

function isString2(value: unknown): value is string {
  return typeof value === 'string'
}

//assim ele apresenta um erro pois o TS não executa JS, ou seja, ele não consegue executar o isString pra saber o que está dentro dela
function handleData(data: unknown) {
  if (isString(data)) {
    data.toLowerCase()
  }
}

//já com o is string, o TS entende que a função isString2 só vai returnar true se o value for string
function handleData2(data: unknown) {
  if (isString2(data)) {
    data.toLowerCase()
  }
}
