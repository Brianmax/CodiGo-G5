-- Active: 1716234669556@@127.0.0.1@5432@testing
-- creacion de la tabla aerolineas
create table if not exists aerolineas(
	id_aerolinea serial primary key,
	nombre varchar(100),
);

-- creacion de la tabla aviones

create table if not exists aviones (
	id_avion serial primary key,
	capacidad smallint,
	peso smallint,
	modelo varchar(100),

	id_aerolinea_fk integer,

	foreign key(id_aerolinea_fk) 
		references aerolineas(id_aerolinea)
);

-- creacion de la tabla vuelos
create table vuelos (
	id_vuelo serial primary key,
	fecha_salida date,
	fecha_llegada date,
	origen varchar(100),
	destino varchar(100),

	id_avion_fk integer,

	foreign key(id_avion_fk)
		references aviones(id_avion)
);

-- creacion de la tabla reservas

create table if not exists reservas(
	id_reserva serial primary key,
	asiento integer
    -- id_pasajero_fk integer,
    -- id_vuelo_fk integer,

    -- foreign key(id_pasajero_fk) REFERENCES pasajeros(id_pasajero),
    -- foreign key(id_vuelo_fk) REFERENCES vuelos(id_vuelo)
);

-- creacion de la tabla pasajeros
create table if not exists pasajeros(
	id_pasajero serial primary key,
	nombre varchar(100),
	apellido varchar(100),
    estado boolean
);

-- creacion de la tabla pilotos
create table if not exists pilotos(
	id_piloto serial primary key,
	nombre varchar(100),
	apellido varchar(100),
	estado boolean,
    id_aerolinea_fk integer,
    foreign key(id_aerolinea_fk) REFERENCES aerolineas(id_aerolinea)
);

-- creacion de la tabla vuelo_piloto
create table if not exists vuelo_piloto();