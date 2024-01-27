const express = require('express');
const routes = require('./routes');

const app = express();

app.use(routes);

app.listen(3030, () => console.log('server start at http://localhost:3030'));
