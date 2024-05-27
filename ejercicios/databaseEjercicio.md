## Práctica 1
La base de datos del sistema de gestión de un hospital se ha diseñado para gestionar de manera eficiente la información relacionada con pacientes, médicos, especialidades, citas y tratamientos. A continuación, se proporciona una descripción detallada de las entidades y sus relaciones:

### Definición de Entidades y Atributos:
a. **Pacientes:**
   - Atributos:
      - `Paciente_ID` (Identificador único, tipo: INT)
      - `Nombre` (Nombre del paciente, tipo: VARCHAR)
      - `Fecha_Nacimiento` (Fecha de nacimiento, tipo: DATE)
   - Relaciones:
      - Uno a muchos con Citas
      - Uno a muchos con Tratamientos

b. **Médicos:**
   - Atributos:
      - `Medico_ID` (Identificador único, tipo: INT)
      - `Nombre` (Nombre del médico, tipo: VARCHAR)
      - `Especialidad_ID` (Identificador de especialidad, tipo: INT)
   - Relaciones:
      - Muchos a uno con Especialidades
      - Uno a muchos con Citas
      - Uno a muchos con Tratamientos

c. **Especialidades:**
   - Atributos:
      - `Especialidad_ID` (Identificador único, tipo: INT)
      - `Nombre` (Nombre de la especialidad, tipo: VARCHAR)
   - Relaciones:
      - Uno a muchos con Médicos

d. **Citas:**
   - Atributos:
      - `Cita_ID` (Identificador único, tipo: INT)
      - `Fecha_Cita` (Fecha de la cita, tipo: DATE)
      - `Paciente_ID` (Identificador de paciente, tipo: INT)
      - `Medico_ID` (Identificador de médico, tipo: INT)
   - Relaciones:
      - Muchos a uno con Pacientes
      - Muchos a uno con Médicos

e. **Tratamientos:**
   - Atributos:
      - `Tratamiento_ID` (Identificador único, tipo: INT)
      - `Descripcion` (Descripción del tratamiento, tipo: VARCHAR)
      - `Fecha_Inicio` (Fecha de inicio del tratamiento, tipo: DATE)
      - `Fecha_Fin` (Fecha de fin del tratamiento, tipo: DATE)
      - `Paciente_ID` (Identificador de paciente, tipo: INT)
      - `Medico_ID` (Identificador de médico, tipo: INT)
   - Relaciones:
      - Muchos a uno con Pacientes
      - Muchos a uno con Médicos

### Tablas y Relaciones:

a. **Pacientes:**
   - Tabla: `Pacientes`
   - Clave Primaria: `Paciente_ID`

b. **Médicos:**
   - Tabla: `Medicos`
   - Clave Primaria: `Medico_ID`
   - Clave Foránea: `Especialidad_ID` (Referencia a Especialidades)

c. **Especialidades:**
   - Tabla: `Especialidades`
   - Clave Primaria: `Especialidad_ID`

d. **Citas:**
   - Tabla: `Citas`
   - Clave Primaria: `Cita_ID`
   - Claves Foráneas:
      - `Paciente_ID` (Referencia a Pacientes)
      - `Medico_ID` (Referencia a Médicos)

e. **Tratamientos:**
   - Tabla: `Tratamientos`
   - Clave Primaria: `Tratamiento_ID`
   - Claves Foráneas:
      - `Paciente_ID` (Referencia a Pacientes)
      - `Medico_ID` (Referencia a Médicos)

### Ejercicios de Consultas JOIN:

1. **Consultar todos los pacientes junto con sus citas:**

2. **Listar todos los médicos con sus respectivas especialidades:**

3. **Obtener el nombre de los pacientes y los tratamientos que están recibiendo:**

4. **Listar todas las citas con la información del paciente y del médico:**

5. **Encontrar todos los tratamientos realizados por un médico específico:**