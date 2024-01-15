const express = require('express')
const router = express.Router()

function logReq(req, res, next){
    console.log('midleware para rota adm')

    return next()
}

router.get('/',logReq, (req, res)=>{
    res.send('area administrativa')
})

//pegando parâmetros
router.get('/:id', (req, res)=>{
    res.send(`area administrativa com o id ${req.params.id}`)
})

router.post('/', (req, res)=>{
    let conteudo = `login ${req.body.login}`
    conteudo += `senha ${req.body.senha}`
    res.send(`informações: \n${conteudo}`)
})
//alterar alguns dados
router.patch('/:id', (req, res)=>{
    res.send('area administrativa via patch')
})
//alterar todos os dados
router.put('/:id', (req, res)=>{
    res.send('area administrativa via put')
})

router.delete('/:id', (req, res)=>{
    res.send('area administrativa via delete')
})

module.exports = router