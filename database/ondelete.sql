-- on delete set null

CREATE TABLE profesores(
	id_profesor SERIAL PRIMARY KEY,
	nombre VARCHAR(250),
	apellido VARCHAR(250),
	email VARCHAR(250)
);

CREATE TABLE cursos(
	id_curso SERIAL PRIMARY KEY,
	nombre VARCHAR,
	descripcion VARCHAR,

	id_profesor INTEGER REFERENCES profesores(id_profesor) ON DELETE SET NULL
);

INSERT INTO profesores(nombre, apellido, email) 
	VALUES('Jose', 'Martinez', 'jmartinez@gmail.com');

SELECT id_profesor, nombre, apellido FROM profesores;

INSERT INTO cursos(nombre, descripcion, id_profesor)
	VALUES('Matematica', 'Matematica introduccion', 1);


INSERT INTO cursos(nombre, descripcion, id_profesor)
	VALUES('Fisica', 'Fisica introduccion', 1);

SELECT * FROM cursos;

-- se elimina todos los registros de la tabla
-- DELETE FROM profesores;

DELETE FROM profesores WHERE id_profesor = 1;


-- on delete cascade

CREATE TABLE orders(
	order_id SERIAL PRIMARY KEY,
	order_date DATE NOT NULL,
	descripcion VARCHAR
);

CREATE TABLE items_order(
	id_item_order SERIAL PRIMARY KEY,
	product VARCHAR,
	quantity INTEGER,
	price FLOAT,

	order_id INTEGER,

	FOREIGN KEY(order_id) REFERENCES orders(order_id) ON DELETE CASCADE
);

INSERT INTO orders(order_date) 
	VALUES('2024-05-21');
INSERT INTO orders(order_date, descripcion) 
	VALUES('2024-05-21', 'Alguna orden');

-- error ya que la fecha es obligatoria
-- INSERT INTO orders(descripcion) 
	-- VALUES('Alguna orden');

SELECT * FROM orders;

SELECT * FROM items_order;

INSERT INTO items_order(product, quantity, price, order_id) 
	VALUES('Laptop HP', 2, 1999.9, 1);
INSERT INTO items_order(product, quantity, price, order_id) 
	VALUES('Camisa HYM', 4, 90.9, 1);

DELETE FROM orders WHERE order_id = 1;

-- on delete set default


