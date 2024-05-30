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

