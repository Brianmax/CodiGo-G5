CREATE TABLE IF NOT EXISTS aerolineas(
	-- serial hace que el campo sea manejado por el dbms
	id_aerolinea SERIAL PRIMARY KEY,
	nombre VARCHAR(50),
	estado BOOLEAN
);

CREATE TABLE IF NOT EXISTS aviones(
	id_avion SERIAL PRIMARY KEY,
	modelo VARCHAR(250) NOT NULL,
	capacidad INTEGER NOT NULL,
	estado BOOLEAN NOT NULL,

	id_aerolinea INTEGER REFERENCES aerolineas(id_aerolinea)
);
CREATE TABLE IF NOT EXISTS pilotos(
	id_piloto SERIAL PRIMARY KEY,
	nombre VARCHAR NOT NULL,
	apellido VARCHAR NOT NULL,
	estado BOOLEAN,
	id_aerolinea INTEGER REFERENCES aerolineas(id_aerolinea)
);

CREATE TABLE IF NOT EXISTS vuelos(
	id_vuelo SERIAL PRIMARY KEY,
	fecha_salida DATE NOT NULL,
	fecha_llegada DATE NOT NULL,
	estado BOOLEAN,
	id_avion INTEGER REFERENCES aviones(id_avion) 
);

CREATE TABLE IF NOT EXISTS pilotos_vuelos(
	id_piloto INTEGER REFERENCES pilotos(id_piloto),
	id_vuelo INTEGER REFERENCES vuelos(id_vuelo),

	PRIMARY KEY(id_piloto, id_vuelo)
);

CREATE TABLE IF NOT EXISTS pasajeros(
	id_pasajero SERIAL PRIMARY KEY,
	nombre VARCHAR,
	apellido VARCHAR,
	estado BOOLEAN
);

CREATE TABLE IF NOT EXISTS reservas(
	id_reserva SERIAL PRIMARY KEY,
	origen VARCHAR,
	destino VARCHAR,
	asiento INTEGER,

	id_pasajero INTEGER REFERENCES pasajeros(id_pasajero),
	id_vuelo INTEGER REFERENCES vuelos(id_vuelo)
);
INSERT INTO aerolineas(nombre, estado) VALUES('LATAM', true);

-- insercion fallida ya que el id 1 ya existe
-- INSERT INTO aerolineas(id_aerolinea, nombre, estado) 
--	VALUES(1, 'JET SMART', true);

-- insertar un registro en la tabla aerolineas
INSERT INTO aerolineas(nombre, estado) 
	VALUES('JET SMART', true);

-- seleccionamos todos los registro de la tabla aerolineas
SELECT * FROM aerolineas;

-- seleccionamos todos los registro de la tabla aerolineas
-- solo con el nombre y el estado, el campo id_aerolinea
-- se omite
SELECT nombre, estado FROM aerolineas;
