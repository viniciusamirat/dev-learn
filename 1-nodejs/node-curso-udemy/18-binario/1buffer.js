const Buffer = require('buffer').Buffer

const buf = Buffer.from('Curso de node js')

console.log(buf);
console.log(buf.toString());
console.log(buf.toString('utf16le'));

const buf_string = Buffer.from('carregando uma string', 'utf-8');

console.log(buf_string.toString())

console.log(Buffer.isBuffer(buf_string))

