require('dotenv').config()
const express = require('express')
const mongoose = require('mongoose')
const app = express()

mongoose.connect(process.env.DATABASE_STRING, { useNewUrlParser: true, useUnifiedTopology: true})

const db = mongoose.connection
db.on('error', ()=>{
    console.log('algo deu errado na conexão')
})
db.on('open', ()=>{
    console.log('banco conectado')
})

app.use(express.json())

const subscribersRouter = require('./routes/subscribers')
app.use('/subscribers', subscribersRouter)

app.listen(3000, ()=>{
    console.log('servidor rodando')
}) 