-- seleccionar los aviones que tengan capacidad para mas de 200 personas

select * from aviones where capacidad >= 200;


-- seleccionar los aviones que tengan capacidad para mas de 200 personas
-- y menos de 250

select capacidad, modelo from aviones 
	where capacidad >= 200 and capacidad <=250;

-- siempre usar delete con where

-- count(*)

select count(*) from aviones;

-- contar aviones con capacidad mayor a 200

select count(*) from aviones where capacidad > 200;

-- contar aviones con capacidad mayor a 200 y menor a 250;

select count(*) from aviones where capacidad > 200 and capacidad < 250;

-- group by

select nombre, count(*) from pasajeros group by nombre;



