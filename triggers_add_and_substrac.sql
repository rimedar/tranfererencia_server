CREATE TRIGGER trasnsactions.trigger_substact
 AFTER INSERT
 ON trasnsactions.transactions_record 
 FOR EACH ROW
 update  trasnsactions.cuentas
 set saldoCuenta = saldoCuenta - new.monto
 where numeroCuenta = new.cuentaOrigen;
 
 CREATE TRIGGER trasnsactions.trigger_add
 AFTER INSERT
 ON trasnsactions.transactions_record 
 FOR EACH ROW
 update  trasnsactions.cuentas
 set saldoCuenta = saldoCuenta + new.monto
 where numeroCuenta = new.cuentaDestino;

 
 
 

