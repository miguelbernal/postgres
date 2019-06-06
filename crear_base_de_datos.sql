-- Crear una base de datos
CREATE DATABASE curso_postgresql;
-- Eliminar base de datos
DROP DATABASE curso_postgresql;

-- Crear una tabla
CREATE TABLE usuarios(
	id SERIAL NOT NULL PRIMARY KEY,
	nombre CHARACTER VARYING NOT NULL,
	apellido CHARACTER VARYING NOT NULL,
	estudiante BOOLEAN,
	nacimiento DATE
)

-- eliminar una tabla
DROP TABLE curso_postgresql.usuarios;

-- listar contenido de una tabla
SELECT * FROM usuarios;
SELECT * FROM usuarios WHERE estudiante = false;

-- agregar filas a las tablas
INSERT INTO usuarios(nombre,apellido,estudiante,nacimiento)
       VALUES('Alvaro','Gonzalez',true,'2019-01-01');

INSERT INTO usuarios(nombre,apellido,estudiante,nacimiento)
       VALUES('Juana','Perez',false,'2019-02-02');

-- modificar filas de una tabla
UPDATE usuarios SET nombre='Jose', apellido='Ramirez' WHERE id=3;

-- eliminar filas de una tabla
DELETE FROM usuarios WHERE id=4;
