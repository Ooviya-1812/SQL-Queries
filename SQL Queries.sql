CREATE DATABASE e_commerce;
USE e_commerce;

SELECT * FROM superstore;

SELECT city
FROM superstore;
SELECT `Customer ID`
FROM superstore;

SELECT *
FROM superstore
WHERE city = 'Los Angeles';

SELECT * 
FROM superstore
ORDER BY Quantity;

SELECT city, sum(Sales)
FROM superstore
GROUP BY city;

SELECT AVG(Sales)
FROM superstore;

SELECT MAX(Profit)
FROM superstore;

CREATE TABLE customers (
    `Customer ID` VARCHAR(20),
    Customer_Email VARCHAR(100)
);

INSERT INTO customers (`Customer ID`, Customer_Email)
VALUES
('CG-12520', 'claire@example.com'),
('DV-13045', 'darrin@example.com'),
('SO-20335', 'sean@example.com'),
('BH-11710', 'brosina@example.com'),
('AA-10480', 'andrew@example.com');

SELECT s.`Customer ID`,
       s.`Customer Name`,
       c.Customer_Email
FROM superstore s
INNER JOIN customers c
ON s.`Customer ID` = c.`Customer ID`;

SELECT s.`Customer ID`,
       s.`Customer Name`,
       c.Customer_Email
FROM superstore s
LEFT JOIN customers c
ON s.`Customer ID` = c.`Customer ID`;

SELECT s.`Customer ID`,
       s.`Customer Name`,
       c.Customer_Email
FROM superstore s
RIGHT JOIN customers c
ON s.`Customer ID` = c.`Customer ID`;

SELECT `Product Name`, Sales
FROM superstore
WHERE Sales >
(
    SELECT AVG(Sales)
    FROM superstore
);

CREATE VIEW HighSales AS
SELECT *
FROM superstore
WHERE Sales > 1000;

SELECT *
FROM HighSales;

