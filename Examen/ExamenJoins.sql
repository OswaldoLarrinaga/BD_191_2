CREATE TABLE Autores (
id_autor bigint identity(300,1) PRIMARY KEY,
nombre VARCHAR(100),
pais_origen VARCHAR(100)
);

Select * FROM Autores;
ALTER TABLE Comics
ADD id_autor bigint,
FOREIGN KEY (id_autor) REFERENCES Autores(id_autor);

Select * FROM Comic_Compras;

INSERT INTO Autores (nombre, pais_origen)
VALUES 
('Oscar_Miguel','México'),
('Hector_Jimenez','Colombia'),
('Regina_Fitch','Austria'),
('Alexandra_Maldonado','');

UPDATE Comics
SET id_autor = 301 WHERE id_comic = 15;

UPDATE Autores
SET pais_origen = 'Alemania' WHERE id_autor = 303




SELECT Comics.nombre, Autores.pais_origen, autores.nombre, Comic_Compras.cantidad
FROM Comics
LEFT JOIN  Autores ON  Autores.id_autor = Comics.id_autor
JOIN Comic_Compras ON Comic_Compras.id_CC = Comics.id_comic;


SELECT Autores.nombre, Comics.nombre, Inventario.cantidad_disponible
FROM Comics
LEFT JOIN Autores ON Autores.id_autor = Comics.id_autor
JOIN Inventario ON Comics.id_comic = Inventario.id_comic;


