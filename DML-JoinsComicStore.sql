--Inner Join
use ADBS191;
SELECT c.id_compra, cl.nombre AS Cliente, c.fecha_compra, c.total
FROM Compras c
JOIN Clientes cl ON c.id_cliente = cl.id_cliente;

--LEFT
SELECT c.id_compra, cl.nombre AS Cliente, c.fecha_compra, c.total
FROM Compras c
LEFT JOIN Clientes cl ON c.id_cliente = cl.id_cliente;

--RIGHT
SELECT c.id_compra, cl.nombre AS Cliente, c.fecha_compra, c.total
FROM Compras c
RIGHT JOIN Clientes cl ON c.id_cliente = cl.id_cliente;

--FULL JOIN
SELECT *
FROM Clientes cl
FULL JOIN Compras c
ON c.id_cliente;


SELECT Comics.nombre, Inventario.cantidad_disponible
FROM Comics
JOIN Inventario ON Comics.id_comic = Inventario.id_comic;

SELECT Clientes.nombre AS nombre_cliente, Compras.id_compra, Compras.fecha_compra, Compras.total, Comics.nombre AS nombre_comic, Comic_Compras.cantidad
FROM Clientes
JOIN Compras ON Clientes.id_clientes = Compras.id_cliente
JOIN Comic_Compras ON Compras.id_compra = Comic_Compras.id_compra
JOIN Comics ON Comic_Compras.id_comic = Comics.id_comic;

