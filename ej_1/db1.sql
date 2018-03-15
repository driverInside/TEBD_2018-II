-- db1.sql
-- ej1
CREATE DATABASE IF NOT EXISTS db1;
USE db1;
CREATE TABLE IF NOT EXISTS autores (
  id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
  nombre varchar(100)
);
CREATE TABLE IF NOT EXISTS editoriales (
   id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
   nombre varchar(100)
);
CREATE TABLE IF NOT EXISTS libros (
  id varchar(10) PRIMARY KEY NOT NULL,
  anio INTEGER,
  nombre varchar(100),
  id_autor INTEGER NOT NULL,
  id_editorial INTEGER NOT NULL,
  FOREIGN KEY (id_autor)
    REFERENCES autores(id),
  FOREIGN KEY (id_editorial)
    REFERENCES editoriales(id)
);
INSERT INTO autores (nombre) VALUES ('Miguel de Cervantes');
INSERT INTO autores (nombre) VALUES ('Lewis Carroll');
INSERT INTO autores (nombre) VALUES ('Julio Verne');
INSERT INTO autores (nombre) VALUES ('Malba Tahan');

INSERT INTO editoriales (nombre) VALUES ('Alpha');
INSERT INTO editoriales (nombre) VALUES ('Omega');
INSERT INTO editoriales (nombre) VALUES ('Purrúa');
INSERT INTO editoriales (nombre) VALUES ('Océano');

INSERT INTO libros (id, anio, nombre, id_autor, id_editorial) VALUES ('gb_432-23', 1864, 'Viaje al centro de la Tierra', 3, 1);
INSERT INTO libros (id, anio, nombre, id_autor, id_editorial) VALUES ('fw_771-h', 1865, 'Las aventuras de Alicia en el país de las maravillas', 2, 1);
INSERT INTO libros (id, anio, nombre, id_autor, id_editorial) VALUES ('gb_432-ww', 1605, 'Don Quijote de la Mancha', 1, 2);
INSERT INTO libros (id, anio, nombre, id_autor, id_editorial) VALUES ('mn_097-g', 1864, 'Veinte mil leguas de viaje submarino', 3, 4);
INSERT INTO libros (id, anio, nombre, id_autor, id_editorial) VALUES ('pb_331-y', 1938, 'El hombre que calculaba', 4, 4);
