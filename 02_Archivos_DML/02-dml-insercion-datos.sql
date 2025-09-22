-- DML para la base de datos de la tienda de libros

-- 1. Sentencias INSERT para poblar las tablas

-- Insertar datos en la tabla Clientes
INSERT INTO Clientes (nombre, email, direccion) VALUES
('Ana Lopez', 'ana.lopez@email.com', 'Calle Falsa 123'),
('Carlos Ruiz', 'carlos.ruiz@email.com', 'Avenida Siempreviva 456');
select * from Pedidos;

-- Insertar datos en la tabla Libros
INSERT INTO Libros (titulo, autor, precio) VALUES
('El Hobbit', 'J.R.R. Tolkien', 15.50),
('1984', 'George Orwell', 12.00),
('Cien años de soledad', 'Gabriel García Márquez', 20.75);

-- Insertar pedidos
INSERT INTO Pedidos (cliente_id, fecha_pedido, estado) VALUES
(1, '2025-05-20', 'Entregado'),
(2, '2025-05-21', 'Pendiente');

-- Insertar detalles del pedido
INSERT INTO Detalle_Pedido (pedido_id, libro_id, cantidad) VALUES
(1, 1, 1),
(1, 2, 1),
(2, 3, 2);

-- 2. Sentencias UPDATE para modificar datos

UPDATE Clientes
SET direccion = 'Nueva Avenida 789'
WHERE cliente_id = 1;

-- 3. Sentencias DELETE para eliminar datos

DELETE FROM Detalle_Pedido WHERE pedido_id = 2;
DELETE FROM Pedidos WHERE pedido_id = 2;