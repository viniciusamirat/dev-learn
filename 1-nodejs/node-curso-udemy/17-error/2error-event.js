const {EventEmitter} = require('events')
const emitter = new EventEmitter();

const valida = (a)=>{
    if(typeof a != 'object'){
        emitter.emit('error', new Error('deu erro aqui'))
    }else{
        console.log('nao deu erro')
    }
    
}

emitter.on('error', (err)=>{
    console.log('deu erro em algum lugar: ', err.message)
})

let dados = {
    name: 'vinicius',
    idade: 19
}

valida(dados);

valida('a')