const numbers = [1,2,3,4,5,6]
const valores = [1,2,3,4, 'teste']

function maiorQue10(data: number[]){
  return data.filter(item => item > 10)
}

function filtrarValores(data: (number | string)[]) {
  return data.filter(item => typeof item === 'number')
}

console.log(maiorQue10(numbers))