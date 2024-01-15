const { deepStrictEqual } = require('assert')

const obj = {}
const arr = []
const fn = () => {}

console.log('new Object() is {}?', new Object().__proto__ === {}.__proto__)
deepStrictEqual(new Object().__proto__ , {}.__proto__)

console.log('obj.__proto__ === Object.prototype', obj.__proto__ === Object.prototype)
deepStrictEqual(obj.__proto__, Object.prototype)

console.log('arr.__proto__ === Array.prototype', arr.__proto__ === Array.prototype)
deepStrictEqual(arr.__proto__, Array.prototype)

console.log('fn.__proto__ === Function.prototype', fn.__proto__ === Function.prototype)
deepStrictEqual(fn.__proto__, Function.prototype)