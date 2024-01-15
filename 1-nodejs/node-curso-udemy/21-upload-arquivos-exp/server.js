const express = require('express')
const bodyParser = require('body-parser')
const multer = require('multer')
const app = express()
const path = require('path')

app.use(bodyParser.urlencoded({extends:true}))

const storage = multer.diskStorage({
    destination: (req, file, cb)=>{
        cb(null, 'uploads/')
    },
    filename: (req, file, cb)=>{
        cb(null, file.fieldname + '-' + Date.now() + path.extname(file.originalname))
    }
})

const upload = multer({storage})

app.get('/', (req, res)=>{
    //res.json({message: 'bem vindo disgraça'})
    res.sendFile(__dirname + '/index.html')
})

app.post('/upload', upload.single('file'), (req, res, next)=>{

    const file = req.file
    console.log('aqui1')
    if(!file){
        const err = new Error('o arquivo não existe')
        err.httpStatusCode = 400
        return next(err)
    }

    res.send(file)

})//informado que vou pegar só um arquivo

app.listen(3000, '127.0.0.1', ()=>{
    console.log('está rodando disgraça')
})