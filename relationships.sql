CREATE DATABASE IF NOT EXISTS RetailStore;
USE RetailStore;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    Product VARCHAR(100),
    Amount DECIMAL(10, 2),
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Customers data
INSERT INTO Customers VALUES
(1, 'Rahul Sharma'),
(2, 'Anjali Mehta'),
(3, 'Amit Verma');

-- Orders data
INSERT INTO Orders VALUES
(101, 'LAPTOP', 50000, 2),
(102, 'MOUSE', 500, 1),
(103, 'KEYBOARD', 700, 1);


-- INNER JOIN- Shows only customers with a valid customer link
SELECT Customers.CustomerName, Orders.Product, Orders.Amount
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- LEFT JOIN
SELECT Customers.CustomerName, Orders.Product, Orders.Amount
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- RIGHT JOIN
SELECT Customers.CustomerName, Orders.Product, Orders.Amount
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- UNION WILL SHOW LEFT+RIGHT

SELECT Customers.CustomerName, Orders.Product, Orders.Amount
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

UNION


SELECT Customers.CustomerName, Orders.Product, Orders.Amount
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
