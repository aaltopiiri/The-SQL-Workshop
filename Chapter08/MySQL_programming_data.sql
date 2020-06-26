SET @var1 = NULL;      -- 1. Declare variable @var1 
SELECT @var1;          -- 2. Output the value of @var1 
SET @var1 = 3;         -- 3. Set @var1 to 3 
SELECT @var1;          -- 4. Output the value of @var1 
SET @var1 = @var1 - 7; -- 5. Subtract 7 from @var1 
SELECT @var1;          -- 6. Output the value of @var1 
SET @var1 = @var1 + 5; -- 7. Add 5 to @var1 
SELECT @var1;          -- 8. Output the value of @var1

USE PACKT_ONLINE_SHOP;

CREATE PROCEDURE `spFilterProductsByNRP` (IN priceLevel FLOAT) 
BEGIN 

# to test: USE packt_online_shop; 
# CALL spFilterProductsByNRP(10.50); 

SELECT   ProductName, WholesalePrice, NetRetailPrice, 
	CASE 
		WHEN NetRetailPrice <= 24.99 THEN 'Cheap' 
		WHEN NetRetailPrice > 24.99 AND NetRetailPrice <= 79.99 THEN 'Mid-price' 
		WHEN NetRetailPrice > 79.99 AND NetRetailPrice <= 2499.99 THEN 'Expensive' 
		ELSE 'Very Expensive' 
	END AS 'Price Point', 
UnitKGWeight 
FROM Products 
WHERE NetRetailPrice <= priceLevel 
ORDER BY ProductName;

END

CALL spFilterProductsByNRP(20.00);

CREATE PROCEDURE `spCustomerOrders` (IN orderDate Datetime) 

# to test: USE PACKT_ONLINE_SHOP; 
# CALL spCustomerOrders('2018.01.12');

SELECT CONCAT(C.FirstName, ' ', C.LastName) as 'Customer Name', O.OrderNumber, O.OrderDate 
FROM Orders O INNER JOIN Customers C 
ON C.CustomerID = O.CustomerID 
WHERE O.OrderDate <= orderDate 
ORDER BY 'Customer Name'; 

DROP PROCEDURE `spFilterProductsByNRP`;

CREATE PROCEDURE `spFilterProductsByNRP` 
(priceLevel float,
unitWeight float) 
# to test: USE PACKT_ONLINE_SHOP; 
# CALL spFilterProductsByNRP(10.50,0.03); 
SELECT   ProductName, WholesalePrice, NetRetailPrice, 
	CASE 
		WHEN NetRetailPrice <= 24.99 THEN 'Cheap' 
		WHEN NetRetailPrice > 24.99 AND NetRetailPrice <= 79.99 THEN 'Mid-price' 
		WHEN NetRetailPrice > 79.99 AND NetRetailPrice <= 2499.99 THEN 'Expensive' 
		ELSE 'Very Expensive' 
	END AS 'Price Point', 
UnitKGWeight, AvailableQuantity 
FROM Products 
WHERE NetRetailPrice <= priceLevel AND UnitKGWeight <= unitWeight 
ORDER BY  ProductName;




