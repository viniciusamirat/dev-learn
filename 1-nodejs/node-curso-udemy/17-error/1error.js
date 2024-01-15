

function execute(){
    executeTo();
}

function executeTo(){
    throw new Error('Deu erro');
}

function main(){
    try{
        execute();
    }catch(error){
        console.log('deu erro aqui: ', error.message)
    }
}

main();
console.log('CONTINUANDO')