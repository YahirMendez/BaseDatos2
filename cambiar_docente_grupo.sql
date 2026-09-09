CREATE OR REPLACE PROCEDURE cambiar_docente_grupo(
    id_grupo_recibido INT,
    id_docente_nuevo INT
)

LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE grupos
    SET id_docente = id_docente_nuevo
    WHERE id_grupo = id_grupo_recibido;

    IF NOT FOUND THEN
        RAISE EXCEPTION
        'No existe un grupo con el ID %',
        id_grupo_recibido;
    END IF;

    RAISE NOTICE
    'Docente del grupo actualizado correctamente.';
END;
$$;

CALL cambiar_docente_grupo(
    1,
    2
);


SELECT
    id_grupo,
    id_materia,
    id_docente,
    grupo
FROM grupos
WHERE id_grupo = 1;
