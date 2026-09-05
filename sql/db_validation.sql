-----------------------------------------------
-- Base de datos: qa_portfolio.db
-- Simula datos reales de la API DummyJSON (Products y Users)
-- Motor: SQLite
-----------------------------------------------

-- 1. Estructura de las tablas

CREATE TABLE "Products" (
    "id"        INTEGER,
    "title"     TEXT,
    "price"     REAL,
    "category"  TEXT,
    "stock"     INTEGER,
    PRIMARY KEY("id")
);

CREATE TABLE "users" (
    "id"        INTEGER,
    "firstname" TEXT,
    "lastname"  TEXT,
    "email"     TEXT,
    "age"       INTEGER,
    PRIMARY KEY("id")
);

-----------------------------------------------
-- 2. Datos de prueba (Mock Data)
-----------------------------------------------


INSERT INTO Products (id, title, price, category, stock) VALUES
(1, 'Essence Mascara Lash Princess', 9.99, 'beauty', 5),
(2, 'Eyeshadow Palette with Mirror', 19.99, 'beauty', 44),
(3, 'Powder Canister', 14.99, 'beauty', 0),
(4, 'iPhone 9', 549.0, 'smartphones', 34),
(5, 'Samsung Galaxy Book', 1499.0, 'laptop', 50);

INSERT INTO users (id, firstname, lastname, email, age) VALUES
(1, 'Emily', 'Johnson', 'emily.johnson@x.dummyjson.com', 28),
(2, 'Michael', 'Williams', 'michael.williams@x.dummyjson.com', 35),
(3, 'Sophia', 'Brown', 'sophia.brown@x.dummyjson.com', 42),
(4, 'James', 'Davis', 'james.davis@x.dummyjson.com', 30),
(5, 'Emma', 'Miller', 'emma.miller@x.dummyjson.com', 25);

-----------------------------------------------
-- 3. Queries de validación funcional
-----------------------------------------------

-- Query 1: Ver todos los productos
SELECT * FROM Products;

-- Query 2: Verificar productos sin stock
-- Detecta productos que podrían estar activos en el catálogo pero sin unidades disponibles
SELECT title, stock FROM Products WHERE stock = 0;

-- Query 3: Productos por encima de cierto precio
SELECT title, price FROM Products WHERE price > 500;

-- Query 4: Usuarios mayores de 30 años (estrictamente mayor, no incluye 30)
SELECT firstname, lastname, age FROM users WHERE age > 30;

-- Query 5: Cantidad de productos por categoría
SELECT category, COUNT(*) as cantidad FROM Products GROUP BY category;