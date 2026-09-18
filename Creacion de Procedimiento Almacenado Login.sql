CREATE TABLE acceso (
    id_estudiante INT,
    correo VARCHAR(100),
    contrasena VARCHAR(100)
);

select * from alumnos a 

INSERT INTO acceso (id_estudiante, correo, contrasena) VALUES
(1, 'juan@alu.uabcs.mx', 'contra1'),
(2, 'maria@alu.uabcs..mx', 'contra2'),
(3, 'carlos@alu.uabcs..mx', 'contra3');

select * from acceso


CREATE OR REPLACE PROCEDURE validar_login(
    correo_recibido VARCHAR,
    contrasena_recibida VARCHAR
)

LANGUAGE plpgsql
AS $$
BEGIN

    IF EXISTS (
        SELECT *
        FROM acceso
        WHERE correo = correo_recibido
        AND contrasena = contrasena_recibida
    ) THEN
        RAISE NOTICE
        'Acceso Correcto.';
    ELSE
        RAISE NOTICE
        'Acceso Denegado.';
    END IF;
END;
$$;

CALL validar_login(
    'juan@alu.uabcs.mx',
    'contra1'
);