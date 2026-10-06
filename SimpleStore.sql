CREATE DATABASE IF NOT EXISTS SimpleStore;
USE SimpleStore;

CREATE TABLE Sales (
    SalesID INT AUTO_INCREMENT PRIMARY KEY,
    Product VARCHAR(100),
    Category VARCHAR(50),
    Amount DECIMAL (10, 2),
    SaleDate DATE
);


INSERT INTO Sales (Product, Category, Amount, SaleDate)
VALUES
('Pen', 'Stationary', 25.00, '2025-03-01'),
('Book', 'Stationary', 100.00, '2025-02-20'),
('Pencil', 'Stationary', 65.00, '2026-09-08'),
('Scale', 'Stationary', 30.00, '2025-07-17'),
('Eraser', 'Stationary', 5.00, '2024-09-29');

SELECT COUNT(*) FROM Sales;

SELECT SUM(AMOUNT) FROM Sales;

SELECT AVG(AMOUNT) FROM Sales;

SELECT MIN(AMOUNT), MAX(AMOUNT) FROM Sales;

SELECT Category, SUM(AMOUNT)
FROM Sales
GROUP BY Category;


SELECT * FROM Sales;










SELECT Product, Amount
FROM Sales
WHERE Amount > (SELECT AVG(Amount) FROM Sales);

