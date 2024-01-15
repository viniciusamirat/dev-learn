const http = require('http')

const server = http.createServer((req, res) => {
  console.log(`Method: ${req.method}, endpoint: ${req.url}`)

  if (req.url === '/users' && req.method === 'GET') {
    res.writeHead(200, { 'Content-Type': 'application/json' })
    res.end(JSON.stringify({user: 'vini', age: 20}))
  }

  // res.writeHead(200, {
  //   'Content-Type': 'text/html'
  // })
  // res.end('<h1>Hello World!</h1>')
})

server.listen(8080, () => {
  console.log('server up')
})