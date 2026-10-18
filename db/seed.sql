USE negocio_db;

-- 1. Insertar 3 categorías
INSERT INTO categorias (nombre) VALUES 
('Electrónica'),
('Ropa y Moda'),
('Hogar y Cocina');

-- 2. Insertar 12 productos
INSERT INTO productos (nombre, descripcion, precio, stock, categoria_id) VALUES 
('Smartphone X', 'Teléfono inteligente de última generación', 699.99, 15, 1),
('Laptop Pro', 'Computadora portátil para desarrollo', 1299.50, 8, 1),
('Auriculares Inalámbricos', 'Auriculares con cancelación de ruido', 89.99, 25, 1),
('Smartwatch Fit', 'Reloj inteligente deportivo', 149.99, 20, 1),

('Camisa Casual de Algodón', 'Camisa manga larga para hombre', 29.99, 40, 2),
('Jeans Slim Fit', 'Pantalón de mezclilla elasticado', 45.00, 30, 2),
('Chaqueta Impermeable', 'Chaqueta para invierno y lluvia', 79.99, 12, 2),
('Zapatillas Deportivas', 'Zapatillas cómodas para correr', 59.99, 25, 2),

('Licuadora de Alta Potencia', 'Licuadora 3 velocidades', 49.99, 10, 3),
('Set de Ollas Antiadherentes', 'Batería de cocina de 5 piezas', 89.50, 7, 3),
('Cafetera Automática', 'Cafetera para espresso', 119.99, 14, 3),
('Juego de Sábanas King', 'Sábanas suaves 100% algodón', 39.99, 18, 3);

-- 3. Insertar 6 clientes
INSERT INTO clientes (nombre, email, telefono) VALUES 
('Carlos Mendoza', 'carlos.mendoza@email.com', '987654321'),
('Ana López', 'ana.lopez@email.com', '912345678'),
('Juan Pérez', 'juan.perez@email.com', '923456789'),
('María Gómez', 'maria.gomez@email.com', '934567890'),
('Luis Torres', 'luis.torres@email.com', '945678901'),
('Sofía Ramírez', 'sofia.ramirez@email.com', '956789012');

-- 4. Insertar 10 pedidos
INSERT INTO pedidos (cliente_id, estado, total) VALUES 
(1, 'Completado', 789.98),
(2, 'Pendiente', 45.00),
(3, 'Completado', 1389.49),
(1, 'Procesando', 149.99),
(4, 'Completado', 89.50),
(5, 'Cancelado', 119.99),
(6, 'Completado', 69.99),
(2, 'Completado', 79.99),
(3, 'Pendiente', 39.99),
(5, 'Completado', 749.49);

-- 5. Insertar exactamente 25 líneas de detalle en detalle_pedido
INSERT INTO detalle_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES 
(1, 1, 1, 699.99),
(1, 3, 1, 89.99),
(2, 6, 1, 45.00),
(3, 2, 1, 1299.50),
(3, 5, 2, 29.99),
(4, 4, 1, 149.99),
(5, 10, 1, 89.50),
(6, 11, 1, 119.99),
(7, 8, 1, 59.99),
(7, 5, 1, 29.99),
(8, 7, 1, 79.99),
(9, 12, 1, 39.99),
(10, 1, 1, 699.99),
(10, 5, 1, 29.99),
(10, 5, 1, 19.51),
(1, 5, 1, 29.99),
(2, 3, 1, 89.99),
(3, 4, 1, 149.99),
(4, 6, 1, 45.00),
(5, 8, 1, 59.99),
(6, 9, 1, 49.99),
(7, 12, 1, 39.99),
(8, 11, 1, 119.99),
(9, 10, 1, 89.50),
(10, 2, 1, 1299.50);