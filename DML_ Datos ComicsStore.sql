-- Tabla de Clientes

use ADBS191;

CREATE TABLE Clientes (
    id_clientes INT PRIMARY KEY IDENTITY(1,1),
    nombre NVARCHAR(100) NOT NULL,
    correo_electronico NVARCHAR(100) NOT NULL UNIQUE,
    pass NVARCHAR(256) NOT NULL
);

-- Tabla de Compras
CREATE TABLE Compras (
    id_compra INT PRIMARY KEY IDENTITY(1,1),
    id_cliente INT NOT NULL,
    fecha_compra DATETIME NOT NULL,
    total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_clientes)
);

-- Tabla de Comic Compras
CREATE TABLE Comic_Compras (
    id_CC INT PRIMARY KEY IDENTITY(1,1),
    cantidad INT NOT NULL,
    id_compra INT NOT NULL,
    id_comic INT NOT NULL,
    FOREIGN KEY (id_compra) REFERENCES Compras(id_compra),
    FOREIGN KEY (id_comic) REFERENCES Comics(id_comic)
);

-- Tabla de Comics
CREATE TABLE Comics (
    id_comic INT PRIMARY KEY IDENTITY(1,1),
    nombre NVARCHAR(100) NOT NULL,
    año INT NOT NULL,
    precio DECIMAL(10, 2) NOT NULL
);

-- Tabla de Inventario
CREATE TABLE Inventario (
    id_inventario INT PRIMARY KEY IDENTITY(1,1),
    id_comic INT NOT NULL,
    cantidad_disponible INT NOT NULL,
    disponibilidad BIT NOT NULL,
    FOREIGN KEY (id_comic) REFERENCES Comics(id_comic)
);


INSERT INTO Clientes (nombre, correo_electronico, pass) VALUES
('Juan Pérez', 'juan.perez@example.com', 'password1'),
('Ana García', 'ana.garcia@example.com', 'password2'),
('Luis Gómez', 'luis.gomez@example.com', 'password3'),
('María López', 'maria.lopez@example.com', 'password4'),
('Carlos Díaz', 'carlos.diaz@example.com', 'password5'),
('Laura Rodríguez', 'laura.rodriguez@example.com', 'password6'),
('José Fernández', 'jose.fernandez@example.com', 'password7'),
('Elena Sánchez', 'elena.sanchez@example.com', 'password8'),
('Miguel Ramírez', 'miguel.ramirez@example.com', 'password9'),
('Lucía Herrera', 'lucia.herrera@example.com', 'password10'),
('Jorge Morales', 'jorge.morales@example.com', 'password11'),
('Sara Vargas', 'sara.vargas@example.com', 'password12');


INSERT INTO Comics (nombre, año, precio) VALUES
('Batman: Year One', 1987, 9.99),
('Watchmen', 1986, 14.99),
('Maus', 1991, 18.99),
('Sandman: Preludes & Nocturnes', 1989, 12.99),
('The Dark Knight Returns', 1986, 10.99),
('V for Vendetta', 1988, 15.99),
('Saga Vol. 1', 2012, 9.99),
('Y: The Last Man', 2002, 11.99),
('The Walking Dead Vol. 1', 2003, 8.99),
('Spider-Man: Blue', 2002, 7.99),
('Civil War', 2006, 14.99),
('Bone: Out from Boneville', 1991, 9.99),
('Persepolis', 2000, 16.99),
('300', 1998, 19.99),
('Sin City: The Hard Goodbye', 1991, 9.99);

INSERT INTO Inventario (id_comic, cantidad_disponible, disponibilidad) VALUES
(1, 10, 1),
(2, 5, 1),
(3, 8, 1),
(4, 12, 1),
(5, 0, 0),
(6, 7, 1),
(7, 3, 1),
(8, 15, 1),
(9, 0, 0),
(10, 4, 1),
(11, 6, 1),
(12, 2, 1),
(13, 9, 1),
(14, 11, 1),
(15, 13, 1);

INSERT INTO Compras (id_cliente, fecha_compra, total) VALUES
(1, '2024-05-20', 29.97),
(2, '2024-05-21', 18.99),
(3, '2024-05-22', 14.99),
(4, '2024-05-23', 25.98),
(5, '2024-05-24', 7.99),
(6, '2024-05-25', 24.98),
(7, '2024-05-26', 19.99);

INSERT INTO Comic_compras (cantidad, id_compra, id_comic) VALUES
(1, 1, 1), (2, 1, 2), 
(1, 2, 3), 
(1, 3, 4), 
(1, 4, 5), (1, 4, 6), 
(1, 5, 10), 
(1, 6, 7), (1, 6, 8), 
(1, 7, 14);

