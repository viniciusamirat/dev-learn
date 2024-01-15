function sum(x){
    return new Promise((resolve, reject)=>{
        if (Number(x) == NaN || Number(x) == undefined || typeof x != 'number'){
            reject('algo deu errado')
        }

        setTimeout(() => {
            resolve(x + 1);
        }, 3000);
    })
}

//sempre que eu for executar uma função
//cujo retorno é uma Promise, tenho que usar
//o await na chamada dela

//se ele der reject vai carir no error automaticamente

async function main(){

    try {
        const result = await sum('x');
        console.log(result)
    } catch (error) {
        console.log(`Temos problemas: ${error}`);
    }
    
}

main()