const teste = {
  name: 'vini',
  age: 20,
  toString() {
    return `name: ${this.name}, age: ${this.age}`
  },
  valueOf(){
    return 7
  },
  [Symbol.toPrimitive](coercionType){
    console.log('trying to convert to', coercionType)
    const types = {
      string: JSON.stringify(this),
      number: 7
    }

    return types[coercionType] || types.string //se não conseguir e der default usa o segundo
  }
}

//Desta forma ele vai ignorar o toString e o valueOf e ir direto para o Symbol.toPrimitive, 
//fazendo o que nós queremos sem ficar pulando de uma função para outra
console.log('String', String(teste))
console.log('Number', Number(teste))

//neste caso ele não vai conseguir converter nem para string nem number, então retornaria Default que é boolean, porém já fiz esse tratativa lá em cima
console.log('Date', new Date(teste))