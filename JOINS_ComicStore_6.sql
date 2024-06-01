SELECT Comics.nombre, Inventario.cantidad_disponible
FROM Comics
JOIN Inventario ON Comics.id_comic = Inventario.id_comic;

SELECT Clientes.nombre AS nombre_cliente, Compras.id_compra, Compras.fecha_compra, Compras.total, Comics.nombre AS nombre_comic, Comic_Compras.cantidad
FROM Clientes
JOIN Compras ON Clientes.id_clientes = Compras.id_cliente
JOIN Comic_Compras ON Compras.id_compra = Comic_Compras.id_compra
JOIN Comics ON Comic_Compras.id_comic = Comics.id_comic;

SELECT Compras.id_compra, Compras.fecha_compra, Compras.total, Comics.nombre, Inventario.cantidad_disponible
FROM Compras
RIGHT JOIN Comic_Compras ON Compras.id_compra = Comic_Compras.id_compra
RIGHT JOIN Comics ON Comic_Compras.id_comic = Comics.id_comic
RIGHT JOIN Inventario ON Comics.id_comic = Inventario.id_comic;

SELECT Comics.nombre, Inventario.cantidad_disponible
FROM Comics
JOIN Inventario ON Comics.id_comic = Inventario.id_comic;

SELECT Comics.*, Comic_Compras.*, Inventario.cantidad_disponible
FROM Comics
JOIN Comic_Compras ON Comics.id_comic = Comic_Compras.id_comic
JOIN Inventario ON Comics.id_comic = Inventario.id_comic;

SELECT Clientes.id_clientes, Clientes.nombre AS nombre_cliente, Compras.id_compra, Comics.nombre AS nombre_comic, Comic_Compras.cantidad, Inventario.cantidad_disponible
FROM Clientes
JOIN Compras ON Clientes.id_clientes = Compras.id_cliente
JOIN Comic_Compras ON Compras.id_compra = Comic_Compras.id_compra
JOIN Comics ON Comic_Compras.id_comic = Comics.id_comic
JOIN Inventario ON Comics.id_comic = Inventario.id_comic;

