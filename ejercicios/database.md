## Contexto: Gestión de una aerolínea

Una aerolínea opera vuelos comerciales utilizando una flota de aviones y pilotos. Tienen una base de datos para gestionar toda la información relacionada con los aviones, vuelos, pilotos, pasajeros y reservas. Aquí hay una descripción de cada tabla:

1. **Aerolinea**: Contiene información sobre las aerolíneas que operan los vuelos.
2. **Avion**: Almacena detalles sobre los aviones utilizados por la aerolínea, incluido el modelo, la capacidad de pasajeros y el estado.
3. **Vuelo**: Registra información sobre cada vuelo, incluidas las fechas de salida y llegada, así como su estado actual.
4. **Piloto**: Guarda información sobre los pilotos de la aerolínea, como su nombre, apellido y estado de disponibilidad.
5. **Piloto_vuelo**: Esta tabla relaciona los pilotos con los vuelos que operan.
6. **Pasajero**: Contiene información sobre los pasajeros que realizan reservas en los vuelos.
7. **Reserva**: Registra las reservas realizadas por los pasajeros para vuelos específicos, incluido el número de asiento y el estado de la reserva.

Este esquema de base de datos permite a la aerolínea administrar eficientemente sus operaciones, desde la asignación de pilotos y aviones para vuelos específicos hasta la gestión de reservas de pasajeros.

## Ejercicios

1. Escribe una consulta SQL para mostrar todos los vuelos programados para la próxima semana.

2. Escribe una consulta SQL para asignar un piloto a un vuelo específico. Asegúrate de que el piloto esté disponible y el vuelo esté en un estado que permita la asignación de pilotos.

3. Escribe una consulta SQL para mostrar todos los pasajeros que han realizado una reserva en un vuelo específico, junto con sus detalles de reserva.

4. Escribe una consulta SQL para actualizar el estado de una reserva de pasajero de "confirmada" a "cancelada" para un vuelo específico.

5. Escribe una consulta SQL para mostrar todos los vuelos que están completamente reservados (todos los asientos están ocupados).

6. Escribe una consulta SQL para mostrar todos los pilotos que están actualmente asignados a vuelos y la cantidad de vuelos a los que están asignados.

7. Escribe una consulta SQL para mostrar el número de reservas realizadas por cada pasajero, ordenadas de mayor a menor.

8. Escribe una consulta SQL para mostrar el número de vuelos operados por cada aerolínea, ordenados de mayor a menor.

9. Escribe una consulta SQL para mostrar el modelo de avión más utilizado por la aerolínea.

10. Escribe una consulta SQL para mostrar la duración promedio de los vuelos, calculada como la diferencia entre la fecha de salida y la fecha de llegada, agrupada por modelo de avión.

¡Buena suerte con los ejercicios!
