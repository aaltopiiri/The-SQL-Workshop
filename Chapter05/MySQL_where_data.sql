USE PACKT_ONLINE_SHOP;

SELECT ProductName AS 'High-value Products', NetRetailPrice
FROM Products
WHERE NetRetailPrice >= 13.49;

SELECT ProductName, NetRetailPrice
FROM Products
WHERE NetRetailPrice BETWEEN 13.49 AND 50 
ORDER BY NetRetailPrice;

SELECT ProductName,NetRetailPrice
FROM Products
WHERE ProductName != 'habanero peppers'
ORDER BY NetRetailPrice;

SELECT ProductName,NetRetailPrice
FROM Products
WHERE ProductName <> 'habanero peppers'
ORDER BY NetRetailPrice;

SELECT FirstName, LastName, Phone
FROM Customers
WHERE FirstName LIKE '_o%';

SELECT FirstName AS 'Customers from LA', Phone
FROM Customers
WHERE Phone LIKE '(310)%';	

SELECT FirstName, LastName, Phone
FROM Customers
WHERE FirstName LIKE '___';

SELECT FirstName, MiddleName, LastName, Phone
FROM Customers
WHERE FirstName IS NULL;

SELECT *
FROM Customers
WHERE FirstName = 'Joe' AND Phone LIKE '(310)%';

SELECT FirstName, LastName, Phone
FROM Customers
WHERE FirstName = 'Joe' OR Phone LIKE '(310)%';

SELECT FirstName, LastName, Phone, Notes
FROM Customers
WHERE FirstName LIKE 'Jo%' AND (Phone LIKE '(310)%' OR Phone LIKE '(210)%') AND NOT LastName = 'Carter';

SELECT ProductName AS 'Product Name', NetRetailPrice AS 'Product Retail Price', AvailableQuantity AS 'Available Quantity', (NetRetailPrice*AvailableQuantity) AS 'Total Price of Available QTY'
FROM Products
WHERE NetRetailPrice >= 24.99 AND AvailableQuantity >= 38 AND NOT ProductName LIKE '10%';