CREATE TABLE carreras (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE alumnos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) NOT NULL,
    edad INT NOT NULL,
    id_carrera INT REFERENCES carreras(id)
);

CREATE TABLE materias (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    creditos INT NOT NULL,
    id_carrera INT REFERENCES carreras(id)
);

INSERT INTO carreras (nombre) VALUES
('Ingeniería en Desarrollo de Software'),
('Ingeniería en Sistemas Computacionales'),
('Ingeniería Civil');

INSERT INTO alumnos (nombre, correo, edad, id_carrera) VALUES
('Diego Romero Pulido', 'diegor24@uabcs.mx', 20, 1),
('Eder Valverde Peña', 'ederp24@uabcs.mx', 20, 2),
('Yahir Cervantes Mendoza', 'yahirc24@uabcs.mx', 20, 1);

INSERT INTO materias (nombre, creditos, id_carrera) VALUES
('Programación', 8, 1),
('Bases de Datos', 8, 1),
('Estructura de Datos', 8, 2),
('Cálculo Diferencial', 8, 3);
