function soma(x){
    return new Promise((resolve, reject)=>{
        setTimeout(() => {
            resolve(x + 1);
        }, 3000);
    })
}

//tratando caso dê tudo certo e se deu errado
soma(1)
.then((resultado)=>{
    console.log(`Resolvido com o resultado: ${resultado}`)
})
.catch((rejeicao)=>{
    console.log(`Deu algo errado: ${rejeicao}`)
})