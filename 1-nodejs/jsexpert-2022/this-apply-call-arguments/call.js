'use strict';

const { watch, promises: { readFile } } = require('fs')

class File {
  watch(event, filename) {
    this.showContent(filename)
  }

  async showContent(filename) {
    console.log((await readFile(filename)).toString())
  }
}

const file = new File()

//o call vai substituir o comportamento de uma determinda função quando ela for chamada
// Nesse caso eu chamo a watch com a call, passando como primeiro argumento um objeto que tenha como atributo a função 
// que deve ser substituída quando for chamada, e depois são os argumentos normais da watch
// Basicamente o JS vai ficar escutando quando a showContent for chamada e substituira seu comportamento com a função que passei no objeto
file.watch.call({ showContent: () => console.log('função showContent sendo substituida') }, null, __filename)

// O apply funciona igual, porém os argumentos da função utilizada são passados como um array
file.watch.call({ showContent: () => console.log('função showContent sendo substituida') }, [null, __filename])