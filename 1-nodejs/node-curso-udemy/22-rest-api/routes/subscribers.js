const express = require('express')
const router = express.Router()
const Subscriber = require('../models/subscriber')

router.get('/', async (req, res)=>{
    try {
        const subscribers = await Subscriber.find()
        res.json(subscribers)

    } catch (error) {
        res.status(500).json({message: error.message})
    }
})

router.get('/:id',getSubcriber, (req, res)=>{

})

router.post('/', async (req, res)=>{
    const subscriber = new Subscriber({
        username: req.body.username,
        userChannel: req.body.userChannel
    })

    try {
        const newSubscriber = await subscriber.save()
        res.status(201).json(newSubscriber)
    } catch (error) {
        res.status(400).json({message: error.message})
    }
})

router.patch('/:id', getSubcriber, (req, res)=>{

})

router.delete('/:id', getSubcriber, (req, res)=>{

})

async function getSubcriber(req, res, next){
    try {
        const subscriber = await Subscriber.findById(req.params.id)
        if (subscriber == null){
            return res.status(404).json({message: "não existe"})
        }
    } catch (error) {
        return res.status(500).json({message: error.message})
    }

    res.subscriber = subscriber
    next() //como essa função é um midleware, usamos o next pra informar ele de seguir com a função onde o midleware foi usado
}

module.exports = router