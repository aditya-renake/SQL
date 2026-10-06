CREATE DATABASE IF NOT EXISTS ShopDB;
Use ShopDB;

CREATE TABLE Customers(
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    Address VARCHAR(255)
);

INSERT INTO Customers(Name, Email, Address)
VALUES
('Amit Kumar', 'amit@email.com', 'Sangli');

SELECT * FROM Customers;

------------ Displaying of data---------

SELECT column1/column2 FROM table_name;
to display only selected values

* means selcts all and displays all

------------  Filtering of Data-----------
SELECT * FROM Customers WHERE Address LIKE '%Pune%';
it will show all values having city pune in it

SELECT * FROM Customers WHERE Name = 'Rahul Sharma' AND Adress LIKE '%Pune%';

SELECT * FROM Customers WHERE Address NOT LIKE '%MUMBAI%';
IT WILL GIVE US THE CUSTOMERS NOT FROM MUMBAI


---------------  SORTING OF DATA------------
SYNTAX:-  column2 FROM table_name ORDER BY column_name ASC/DESC;

UPDATE SYNTAX:- 
UPDATE table_name
SET column1 = value1, column2 - value2
WHERE condition;

DELETE SYNTAX:-
DELETE FROM table_name
WHERE column_name = 'value';






