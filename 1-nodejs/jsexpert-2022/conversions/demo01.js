
const teste = {
  name: 'vini',
  age: 20
}

// retorna: teste [Object Object]0, ou seja, nenhuma função de coerção implícita conseguiu converter
console.log('teste', teste + 0)

const teste2 = {
  name: 'vini',
  age: 20,
  toString() {
    return `name: ${this.name}, age: ${this.age}`
  }
}

//retorna: teste2 name: vini, age:200
//isso ocorre pois mudei a forma como a função de coerção implícita funciona nesse objeto, assim ele consegue converter como eu desejo
console.log('teste2', teste2 + 0)

const teste3 = {
  name: 'vini',
  age: 20,
  toString() {
    return `name: ${this.name}, age: ${this.age}`
  },
  valueOf(){
    return 7
  }
}

//retorna: teste3 7
//pois como se trata de uma coerção implícita de tipo numério (adição), ele vai chamar o valueOf primeiro
console.log('teste3', teste3 + 0)