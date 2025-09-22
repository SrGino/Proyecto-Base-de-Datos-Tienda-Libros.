-- Consultas SQL para obtener información de la base de datos

-- 1. Obtener todos los pedidos realizados por un cliente específico (Ana Lopez)
SELECT
    p.pedido_id,
    p.fecha_pedido,
    l.titulo,
    dp.cantidad
FROM Pedidos AS p
JOIN Detalle_Pedido AS dp ON p.pedido_id = dp.pedido_id
JOIN Libros AS l ON dp.libro_id = l.libro_id
WHERE p.cliente_id = (SELECT cliente_id FROM Clientes WHERE nombre = 'Ana Lopez');

-- 2. Obtener el total de libros vendidos por cada autor (usando GROUP BY)
SELECT
    l.autor,
    SUM(dp.cantidad) AS total_vendido
FROM Detalle_Pedido AS dp
JOIN Libros AS l ON dp.libro_id = l.libro_id
GROUP BY l.autor;

-- 3. Obtener el nombre del cliente y la fecha de su último pedido
SELECT
    c.nombre,
    MAX(p.fecha_pedido) AS ultimo_pedido
FROM Clientes AS c
LEFT JOIN Pedidos AS p ON c.cliente_id = p.cliente_id
GROUP BY c.nombre
ORDER BY MAX(p.fecha_pedido) DESC;

-- 4. Obtener el precio total de todos los pedidos (usando SUM y JOIN)
SELECT
    p.pedido_id,
    SUM(dp.cantidad * l.precio) AS total_pedido
FROM Pedidos AS p
JOIN Detalle_Pedido AS dp ON p.pedido_id = dp.pedido_id
JOIN Libros AS l ON dp.libro_id = l.libro_id
GROUP BY p.pedido_id;

-- 5. Listar los libros con un precio superior a $15.00
SELECT
    titulo,
    autor,
    precio
FROM Libros
WHERE precio > 15.00;