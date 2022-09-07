const express = require('express');
const bodyParser = require('body-parser');

require('dotenv').config();

// App Express
const app = express();

// Middlewares
app.use(bodyParser.json());
// app.use(express.json());

// Routes
app.use(require('./routes/users'));
app.use(require('./routes/cuentas'));
app.use(require('./routes/transactions'));

const server = require('http').createServer(app);
// Starting the server
server.listen(process.env.PORT, (err) => {
	if (err) throw new Error(err);
	console.log('Servidor corriendo en puerto!!', process.env.PORT);
});
