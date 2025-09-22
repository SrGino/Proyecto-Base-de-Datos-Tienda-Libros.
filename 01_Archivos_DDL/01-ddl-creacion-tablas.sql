-- DDL para la base de datos de la tienda de libros

-- 1. Tabla para los Libros 📚
CREATE TABLE Libros (
    libro_id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(255) NOT NULL,
    autor VARCHAR(255) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL
);

-- 2. Tabla para los Clientes 👩‍🦱
CREATE TABLE Clientes (
    cliente_id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    direccion TEXT
);

-- 3. Tabla para los Pedidos 🛒
CREATE TABLE Pedidos (
    pedido_id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT NOT NULL,
    fecha_pedido DATE NOT NULL,
    estado VARCHAR(50),
    FOREIGN KEY (cliente_id) REFERENCES Clientes(cliente_id)
);

-- 4. Tabla para el Detalle del Pedido 📝
CREATE TABLE Detalle_Pedido (
    detalle_id INT PRIMARY KEY AUTO_INCREMENT,
    pedido_id INT NOT NULL,
    libro_id INT NOT NULL,
    cantidad INT NOT NULL,
    FOREIGN KEY (pedido_id) REFERENCES Pedidos(pedido_id),
    FOREIGN KEY (libro_id) REFERENCES Libros(libro_id)
);