CREATE TABLE alumnos (
    id_alumno SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    carrera VARCHAR(100) NOT NULL,
    materias VARCHAR(200) NOT NULL
);

INSERT INTO alumnos (nombre, carrera, materias) VALUES
('Ana', 'Software', 'Base de Datos, Programación Web'),
('Carlos', 'Software', 'Matemáticas, Base de Datos'),
('María', 'Inteligencia Artificial', 'Programación Web, Matemáticas'),
('Pedro', 'Software', 'Redes, Base de Datos');

SELECT *
FROM alumnos;

SELECT *
FROM alumnos
WHERE materias ILIKE '%Base de Datos%';


--1. ¿Por qué la columna `materias` tiene un problema?
--tiene un problema debido a que la informacion que guarda varios valores en uno, y tienes que utilizar distintas tectinas para solo hacer uso de lo que quieres, de otra manera te daria la cadena completa

--2. ¿Por qué tuviste que utilizar `LIKE` o `ILIKE`?
--debido a que ayuda a buscar solo el contenido que quieres dentro de la cadena, solo escribiendo el valor especifico excluyendo el resto

--3. ¿Cómo guardarías las materias para que cada celda contenga solamente un valor?
--lo que yo haria seriea utilizar una tabla propia para ahi insertar todas las materias, asi te ahorras de busquedas mas dificiles

--**¿Es correcto guardar `"Base de Datos, Programación Web"` dentro de una sola celda? ¿Por qué?**
--a mi parecer no, aparte que es mas dificil realizar la busqueda, no me queda muy claro si quieres hacer una relacion con un solo valor de ese apartado