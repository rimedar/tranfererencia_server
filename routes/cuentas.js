const { Router } = require('express');
const cuentas = Router();
const mysqlConnection = require('../models/db');

cuentas.get('/cuentas_usuario', (req, res) => {
	mysqlConnection.query(
		'select * from cuentas_usuario',
		(error, rows, fields) => {
			if (!error) {
				res.json(rows);
			} else {
				console.log(error);
			}
		}
	);
});

cuentas.get('/cuenta/:numeroCuenta', (req, res) => {
	const { numeroCuenta } = req.params;
	mysqlConnection.query(
		'select * from cuentas where numeroCuenta = ?',
		[numeroCuenta],
		(error, rows, fields) => {
			if (!error) {
				res.json(rows[0]);
			} else {
				console.log(error);
			}
		}
	);
});

// cuentas.put('/cuenta/add/:numeroCuenta', (req, res) => {
// 	const { saldoCuenta } = req.body;
// 	const { numeroCuenta } = req.params;
// 	console.log('numeroCuenta' + numeroCuenta);
// 	console.log(req.body);
// 	mysqlConnection.query(
// 		'update cuentas set saldoCuenta = saldoCuenta +? where numeroCuenta = ?',
// 		[saldoCuenta, numeroCuenta],
// 		(error, rows, fields) => {
// 			if (!error) {
// 				res.json({
// 					Status: 'Account updated',
// 				});
// 			} else {
// 				console.log(error);
// 			}
// 		}
// 	);
// });

// cuentas.put('/cuenta/deduct/:numeroCuenta', (req, res) => {
// 	const { saldoCuenta } = req.body;
// 	const { numeroCuenta } = req.params;
// 	console.log('numeroCuenta' + numeroCuenta);
// 	console.log(req.body);
// 	mysqlConnection.query(
// 		'update cuentas set saldoCuenta = saldoCuenta -? where numeroCuenta = ?',
// 		[saldoCuenta, numeroCuenta],
// 		(error, rows, fields) => {
// 			if (!error) {
// 				res.json({
// 					Status: 'Account updated',
// 				});
// 			} else {
// 				console.log(error);
// 			}
// 		}
// 	);
// });

module.exports = cuentas;
