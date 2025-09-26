-- Esquema para e-commerce de bicicletas (IACC, 2025)
CREATE DATABASE IF NOT EXISTS ecommerce;
USE ecommerce;

-- Tabla de productos (IACC, 2025)
CREATE TABLE IF NOT EXISTS products (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  stock INT NOT NULL
);

-- Tabla de pedidos (IACC, 2025)
CREATE TABLE IF NOT EXISTS orders (
  id INT AUTO_INCREMENT PRIMARY KEY,
  customer_name VARCHAR(100) NOT NULL,
  order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabla de ítems de pedido (IACC, 2025)
CREATE TABLE IF NOT EXISTS order_items (
  id INT AUTO_INCREMENT PRIMARY KEY,
  order_id INT,
  product_id INT,
  quantity INT,
  FOREIGN KEY (order_id) REFERENCES orders(id),
  FOREIGN KEY (product_id) REFERENCES products(id)
);

-- Productos de ciclismo (IACC, 2025)
INSERT INTO products (name, price, stock) VALUES
('Bicicleta de Ruta', 1200000, 5),
('Bicicleta Mountain Bike', 950000, 3),
('Ruedas de Carbono', 450000, 10),
('Casco Aero', 120000, 15),
('Zapatillas Ciclismo', 90000, 20);