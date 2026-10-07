select * from estudiantes e 
select * from pagos 

select id_estudiante, nombre, apellido, telefono
from estudiantes  
where id_estudiante = 4

--cambiar numero de telefono
begin;

update estudiantes
set telefono = '6120000002'
where id_estudiante = 2;

select id_estudiante, nombre, apellido, telefono
from estudiantes  
where id_estudiante = 2;

rollback;

--dar de baja a estudiante
begin;

update estudiantes
set estado = 'BAJA'
where id_estudiante = 2;

select id_estudiante, nombre, apellido, telefono, estado
from estudiantes  
where id_estudiante = 2;

rollback;


--realizar pago de $3500 (transferencia)
begin;

insert into pagos(id_estudiante, id_periodo, concepto, monto, metodo_pago, referencia, estado)
values ('2', '2', 'Inscripcion', '3500', 'Transferencia','REF002', 'PAGADO');

select id_estudiante, id_periodo, concepto, monto, metodo_pago, referencia, estado
from pagos   
where id_estudiante = 2;

rollback;

--update telefono y pago de estudiante
begin;

update estudiantes
set telefono = '6120000002'
where id_estudiante = 2;

insert into pagos(id_estudiante, id_periodo, concepto, monto, metodo_pago, referencia, estado)
values ('2', '2', 'Inscripcion', '3500', 'Transferencia','REF002', 'PAGADOOO');

select id_estudiante, nombre, apellido, telefono, estado
from estudiantes  
where id_estudiante = 2;

select id_estudiante, id_periodo, concepto, monto, metodo_pago, referencia, estado
from pagos   
where id_estudiante = 2;

rollback;


