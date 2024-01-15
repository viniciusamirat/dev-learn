const express = require('express')
const app = express()
const admRoutes = require('./routes/adm')
const cookie = require('cookie-parser')

app.use(express.static('public'))//para servir arquivos estáticos

//significa que a partir de agora ele vai aceitar json
app.use(express.json())//é um middleware

app.use(cookie())//para gravar cookie na máquina do usuário

//vai executar em qualquer req do usuário
app.use((req, res, next)=>{//um midleware que vai chamar a função next depois de terminar este função

    console.log('midleware para qualquer req')

    return next()
})

app.get('/setcookie', (req, res)=>{
    res.cookie('user', 'vini', {maxAge: 900000, httpOnly: true})//nome do cookie, valor dele e data de expiração
    return res.send('cookie gravado com sucesso')

})

app.get('/getcookie', (req, res)=>{
    let user = req.cookies['user']
    return res.send(user)
})

app.get('/', (req, res)=>{
    res.send('hello world!')
})

app.use('/adm', admRoutes)

//gerando um erro
app.get('*', (req, res, next)=>{
    setImmediate(()=>{
        next(new Error('temos um problema'))
    })
})

//midleware para tratar erros
//deve sempre ficar depois da chamada dos outros midlewares e acima do listen
app.use((err, req, res, next)=>{
    console.log(err.stack)
    res.status(500).json({message: err.message})
})

app.listen(3030, ()=>{
    console.log('servidor rodando na porta 3000')
})