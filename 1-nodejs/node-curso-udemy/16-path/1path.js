const path = require('path');

console.log(path.basename('..\\package.json'));

//vai arrumar o caminho
console.log(path.normalize('\\temp\\dir//sub/dir/..'));

//caminho absoluto
console.log(path.resolve('1path.js'))

//pegar a extensão de um arquivo
console.log(path.extname('1path.js'))