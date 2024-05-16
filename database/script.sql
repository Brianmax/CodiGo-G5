CREATE TABLE aerolineas(
	-- serial hace que el campo sea manejado por el dbms
	id_aerolinea SERIAL PRIMARY KEY,
	nombre VARCHAR(50),
	estado BOOLEAN
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
