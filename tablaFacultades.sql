create table facultades (
	id_facultad SERIAL primary key,
	nombre varchar(150) not null,
	codigo varchar(10) unique not null,
	decano varchar(100),
	telefono varchar(20)
);

select * from facultades f

create table carreras (
	id_carrera SERIAL primary key,
	id_facultad int not null,
	nombre varchar(150) not null,
	codigo varchar(10) unique not null,
	duracion_semestres int not null,
	estado varchar(20) default 'ACTIVA',
	
	constraint fk_carrera_facultad
		foreign key (id_facultad)
		references facultades(id_facultad)
);
