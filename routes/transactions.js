const { Router } = require('express');
const transactions = Router();
const mysqlConnection = require('../models/db');

transactions.get('/transactions_record/:numeroCuenta', (req, res) => {
	// Se modifica por cuentaUsuarip
	const { numeroCuenta } = req.params;
	mysqlConnection.query(
		'select * from transactions_record where cuentaOrigen = ? or cuentaDestino = ?',
		[numeroCuenta, numeroCuenta],
		(error, rows, fields) => {
			if (!error) {
				res.json(rows);
			} else {
				console.log(error);
			}
		}
	);
});

transactions.post('/transactions_record', (req, res) => {
	const {
		idTransaction,
		nitUsuario,
		fecha,
		cuentaOrigen,
		cuentaDestino,
		monto,
	} = req.body;
	console.log(req.body);
	mysqlConnection.query(
		'insert into transactions_record(idTransaction, nitUsuario, fecha, cuentaOrigen, cuentaDestino, monto ) values (?, ?, ?, ?, ?, ?)',
		[idTransaction, nitUsuario, fecha, cuentaOrigen, cuentaDestino, monto],
		(error, rows, fields) => {
			if (!error) {
				res.json({ Status: 'Transaction saved' });
			} else {
				console.log(error);
			}
		}
	);
});

module.exports = transactions;
