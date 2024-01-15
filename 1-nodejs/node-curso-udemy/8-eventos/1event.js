const EventEmitter = require('events');

class Evento extends EventEmitter {}

const meuEvento = new Evento();

//criando um evento
meuEvento.on('seguranca',(x,y)=>{
    console.log(`Executando meu evento Segurança: ${x}, ${y}`)
})


//chamando o evento
meuEvento.emit('seguranca', 'userAdmin', 'ele alterou um salario')