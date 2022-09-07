const { Router } = require('express');
const user = Router();

const mysqlConnection = require('../models/db');

user.get('/', (req, res) => {
	res
		.status(200)
		.json('Server on port ' + process.env.PORT + ' and Database is connected.');
});

user.get('/users', (req, res) => {
	mysqlConnection.query('select * from users', (error, rows, fields) => {
		if (!error) {
			res.json(rows);
		} else {
			console.log(error);
		}
	});
});

user.get('/users/:nit', (req, res) => {
	const { nit } = req.params;
	mysqlConnection.query(
		'select * from users where nit = ?',
		[nit],
		(error, rows, fields) => {
			if (!error) {
				res.json(rows[0]);
			} else {
				console.log(error);
			}
		}
	);
});

user.post('/users', (req, res) => {
	const { nit, name, numeroCuenta } = req.body;
	console.log(req.body);
	mysqlConnection.query(
		'insert into users(nit, name, numeroCuenta) values (?, ?, ?)',
		[nit, name, numeroCuenta],
		(error, rows, fields) => {
			if (!error) {
				res.json({ Status: 'User saved' });
			} else {
				console.log(error);
			}
		}
	);
});

module.exports = user;
