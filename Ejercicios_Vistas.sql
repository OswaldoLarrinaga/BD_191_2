CREATE VIEW Vista_ComprasComic AS
SELECT cc.id_CC, cc.cantidad, co.nombre, cc.id_compra, c.fecha_compra, c.total
FROM Comic_Compras cc
JOIN Comics co ON cc.id_comic = co.id_comic
JOIN Compras c ON cc.id_compra = c.id_compra


CREATE VIEW Vista_ComicsComprados AS
SELECT cl.id_clientes, cl.nombre, cc.cantidad
FROM Clientes cl
JOIN Comic_Compras cc ON cl.id_clientes = cc.id_CC


SELECT dbo.Autores.id_autor, dbo.Autores.nombre, dbo.Autores.pais_origen, dbo.Comics.id_comic, dbo.Comics.nombre AS Expr1, dbo.Comics.año, dbo.Comics.precio
FROM  dbo.Autores INNER JOIN
         dbo.Comics ON dbo.Autores.id_autor = dbo.Comics.id_autor


SELECT dbo.Compras.id_compra, dbo.Clientes.nombre AS CLIENTE, dbo.Comics.nombre AS COMIC, dbo.Autores.nombre AS AUTOR, dbo.Comics.año, dbo.Comics.precio, dbo.Comic_Compras.cantidad, dbo.Comics.precio * dbo.Comic_Compras.cantidad AS subtotal
FROM  dbo.Autores INNER JOIN
         dbo.Comics ON dbo.Autores.id_autor = dbo.Comics.id_autor INNER JOIN
         dbo.Comic_Compras ON dbo.Comics.id_comic = dbo.Comic_Compras.id_comic INNER JOIN
         dbo.Compras INNER JOIN
         dbo.Clientes ON dbo.Compras.id_cliente = dbo.Clientes.id_clientes ON dbo.Comic_Compras.id_compra = dbo.Compras.id_compra
