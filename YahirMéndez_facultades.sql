CREATE TABLE facultades (
    id_facultad SERIAL PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL,
    codigo VARCHAR(10) UNIQUE NOT NULL,
    decano VARCHAR(100),
    telefono VARCHAR(20)
);

CREATE TABLE carreras (
    id_carrera SERIAL PRIMARY KEY,
    id_facultad INT NOT NULL,
    nombre VARCHAR(150) NOT NULL,
    codigo VARCHAR(10) UNIQUE NOT NULL,
    duracion_semestres INT NOT NULL,
    estado VARCHAR(20) DEFAULT 'ACTIVA',

    CONSTRAINT fk_carrera_facultad
        FOREIGN KEY (id_facultad)
        REFERENCES facultades(id_facultad)
);

INSERT INTO facultades (nombre, codigo, decano, telefono) VALUES
('Facultad de Ingeniería', 'ING', 'Laura Martinez', '6122345678'),
('Facultad de Ciencias', 'CIE', 'Roberto Lopez', '6123456789'),
('Facultad de Administración', 'ADM', 'Carlos Garcia', '6123456789');

INSERT INTO carreras (id_facultad, nombre, codigo, duracion_semestres) VALUES 
(1, 'Ingeniería en Desarrollo de Software', 'IDS', 8),
(1, 'Ingeniería en Sistemas Computacionales', 'ITC', 8),
(2, 'Ingeniería en Biología', 'BIO', 8),
(3, 'Licenciatura en Administración', 'LAE', 8);

SELECT
    c.nombre AS carrera,
    f.nombre AS facultad
FROM carreras c
INNER JOIN facultades f
    ON f.id_facultad = c.id_facultad;

create table estudiantes (
	id_estudiante SERIAL primary key,
	matricula varchar(20) unique not null,
	nombre varchar(100) not null,
	apellido varchar(100) not null,
	email varchar(100) unique,
	telefono varchar(20),
	fecha_nacimiento DATE,
	id_carrera int not null,
	fecha_ingreso date default current_date,
	estado varchar(20) default 'ACTIVO',
	
	CONSTRAINT fk_carrera_facultad
    	FOREIGN KEY (id_carrera)
    	REFERENCES carreras(id_carrera)
);

select * from carreras

insert into estudiantes
(matricula, nombre, apellido, email, telefono, fecha_nacimiento, id_carrera)
values
('202600001', 'Juan', 'Pérez', 'juan@universidad.mx', '6121111111', '2005-05-16', 1),
('202600002', 'María', 'López', 'maria@universidad.mx', '6122222222', '2004-08-15', 2),
('202600003', 'Carlos', 'Ramírez', 'carlos@universidad.mx', '6123333333', '2005-01-20', 3),
('202600004', 'Ana', 'Torres', 'ana@universidad.mx', '6124444444', '2004-11-03', 4);

select * from estudiantes