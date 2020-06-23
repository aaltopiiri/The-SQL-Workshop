USE PACKT_ONLINE_SHOP;

SELECT * FROM ProductCategories;

SELECT ProductCategoryID, ProductCategoryName
FROM ProductCategories;

SELECT ProductCategoryName, ProductCategoryID
FROM ProductCategories;

SELECT ProductCategoryName AS CATEGORY, ProductCategoryID AS ID
FROM ProductCategories;

SELECT ProductCategoryName AS 'PRODUCT CATEGORY', ProductCategoryID AS ID
FROM ProductCategories;

SELECT  FirstName AS 'First Name', LastName AS 'Last Name', Phone AS 'Phone NUmber'
FROM Customers;

SELECT ProductCategoryName AS 'CATEGORY NAME', ProductCategoryID AS ID
FROM ProductCategories
ORDER BY ProductCategoryName ASC;

SELECT ProductCategoryName AS 'CATEGORY NAME', ProductCategoryID AS ID
FROM ProductCategories
ORDER BY ProductCategoryName DESC;

SELECT FirstName, CustomerID
FROM Customers;

SELECT FirstName, CustomerID
FROM Customers
ORDER BY FirstName, CustomerID DESC;

SELECT FirstName, CustomerID
FROM Customers
ORDER BY 1, 2;

SELECT FirstName, CustomerID
FROM Customers
ORDER BY 1 DESC, 2 DESC;

SELECT ProductName, NetRetailPrice
FROM Products
ORDER BY NetRetailPrice DESC
LIMIT 5;

SELECT ProductName, NetRetailPrice
FROM Products
ORDER BY NetRetailPrice
LIMIT 4;

SELECT * FROM Customers1;

SELECT DISTINCT FirstName, LastName
FROM Customers1;

SELECT DISTINCT FirstName
FROM Customers1;

SELECT ProductID, Quantity, UnitPrice, (Quantity*UnitPrice) AS 'Line Item Total'
FROM OrderItems;

SELECT ProductID, Quantity, UnitPrice, (Quantity*UnitPrice)
  AS 'Line Item Total', Discount,
  ((Quantity*UnitPrice)-(Quantity*Discount))
  AS 'Price After Discount'
FROM OrderItems;

SELECT ProductName AS 'Product Name', NetRetailPrice AS 'Product Retail Price', AvailableQuantity AS 'Available Quantity', (NetRetailPrice*AvailableQuantity) AS 'Total Price of Available QTY'
FROM Products
ORDER BY NetRetailPrice DESC
LIMIT 5;


SELECT NOW();