SELECT *
FROM estudiantes
WHERE id_estudiante = 1;

BEGIN;
UPDATE estudiantes
SET telefono = '6129999999'
WHERE id_estudiante = 1;

COMMIT;

BEGIN;
UPDATE estudiantes
SET estado = 'INACTIVO'
WHERE id_estudiante = 2;

ROLLBACK;


SELECT *
FROM estudiantes
WHERE id_estudiante = 2;

/*1. ¿Para qué sirve BEGIN?
 	sirve para iniciar una transaccion y realizar las operaciones dentro de esta
 	
 2. ¿Qué ocurrió cuando utilizaste COMMIT?
 	los cambios hechos se guardan
 
 3. ¿Qué ocurrió cuando utilizaste ROLLBACK?
	los cambios hechos se deshacen y vuelven a los que estaban antes de la transaccion 
 
 4. ¿Cuál es la diferencia entre COMMIT y ROLLBACK?
 	COMMIT guarda los cambios realizados, mientras que ROLLBACK los cancela y los deshace
 */