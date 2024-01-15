const fs = rquire("fs")

//como é não bloqueante tem que passar uma funçaõd e callback

const dados = fs.readFile("file,txt", (err, data) =>{
    if (err) throw err;
})

