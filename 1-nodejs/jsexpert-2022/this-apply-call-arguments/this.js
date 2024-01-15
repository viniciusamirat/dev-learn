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

// watch(__filename, async (event, filename) => {
//   console.log('Alteração no arquivo!')
// })

const file = new File()

//não funciona, pois o this que ele vai utilizar é referenciando o this da função watch
//watch(__filename, file.watch)

//agora com o bind, podemos forçar o JS a substituir o this que será usado passando o objeto que ele vai utilizar para a substituição
watch(__filename, file.watch.bind(file))