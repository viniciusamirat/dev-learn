const assert = require('assert')

function* calculation(n1, n2) {
  yield n1 * n2
}

function* main() {
  yield 'hello'
  yield '-'
  yield 'world'
  yield* calculation(2, 2) //tem que usar o * para ele entender que tem que executar a função passada
}

const generator = main()

console.log(generator.next())
console.log(generator.next())
console.log(generator.next())
console.log(generator.next())
console.log(generator.next())