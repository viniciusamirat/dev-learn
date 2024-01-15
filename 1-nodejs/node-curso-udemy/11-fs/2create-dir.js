const fs =require('fs');
const assets = ['css', 'js', 'images', 'fonts', 'lib'];

function make(dir){
    
    dir.forEach((item)=>{
        fs.mkdir(`projeto/assets/${item}`, {recursive: true}, (err, data)=>{
            if (err) throw err;
        
            console.log('diretório criado com sucesso');
        })
    })
    
    
}

make(assets);
