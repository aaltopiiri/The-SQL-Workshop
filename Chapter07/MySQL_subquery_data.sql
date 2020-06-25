USE PACKT_ONLINE_SHOP; 

SELECT   P.ProductID, P.ProductName, P.ProductCategoryID 
FROM     Products P 
LEFT OUTER JOIN OrderItems OI
    ON       P.ProductID = OI.ProductID 
WHERE    OI.ProductID IS NULL 
ORDER BY P.ProductID; 

SELECT   P.ProductID, P.ProductName,P.ProductCategoryID 
FROM     Products P 
WHERE    P.ProductID NOT IN 
(SELECT  ProductID FROM OrderItems) 
ORDER BY P.ProductID; 

SELECT O.OrderID
FROM Orders O
WHERE O.OrderID NOT IN (SELECT OrderID FROM OrderItems)
ORDER BY O.OrderID;

SELECT ProductID,ProductName,ProductCategoryName
FROM Products
WHERE Products.ProductCategoryID IN (SELECT ProductCategoryID FROM ProductCategories)
AND ProductName='habanero peppers';

SELECT   ProductName, WholesalePrice, NetRetailPrice,
CASE 
	WHEN NetRetailPrice <= 24.99 THEN 'Cheap' 
    WHEN NetRetailPrice > 24.99 AND NetRetailPrice <= 79.99 THEN 'Mid-price' 
	WHEN NetRetailPrice > 79.99 AND NetRetailPrice <= 2499.99 THEN 'Expensive' 
		ELSE 'Very Expensive' 
END AS 'Price Point', 
UnitKGWeight
FROM     Products
ORDER BY ProductName;

SELECT ProductName, NetRetailPrice, UnitKGWeight, 
    CASE 
        WHEN (NetRetailPrice * UnitKGWeight) <= 1.0 THEN 'Cheap' 
        WHEN (NetRetailPrice * UnitKGWeight) > 1.0 AND(NetRetailPrice * UnitKGWeight) <= 35.00 THEN 'Mid-price' 
        WHEN (NetRetailPrice * UnitKGWeight) > 35.00 AND(NetRetailPrice * UnitKGWeight) <= 100.00 THEN 'Expensive' 
        ELSE 'Very Expensive' 
    END AS 'Shipping Cost' 
FROM Products; 

SELECT O.OrderDate,O.ShipmentDate,
	CASE
		WHEN DATE(O.ShipmentDate)<'2010.12.15' THEN 'Past Shipment'
		WHEN DATE(O.ShipmentDate) BETWEEN '2010.12.15' AND '2019.15.12' THEN 'Recent Shipment Date'
        ELSE 'Future Shipment Date'
    END AS 'Shipment Date Category'
FROM Orders O;

CREATE VIEW CUSTOMER_PRODUCT_VIEW 
AS 
SELECT CONCAT(C.FirstName, ' ', C.LastName) AS'CustomerName', O.OrderDate, P.ProductName 
FROM   Customers C 
INNER JOIN Orders O ON C.CustomerID = O.CustomerID 
INNER JOIN OrderItems OI ON O.OrderID = OI.OrderID 
INNER JOIN Products P ON OI.ProductID = P.ProductID; 
       
CREATE   VIEW PACKT_VIEW_1 
AS 
SELECT   C.CustomerID, O.OrderDate,P.ProductID,P.ProductName,OI.Quantity * OI.UnitPrice AS 'PerProductSpending' 
FROM     Customers C 
INNER JOIN Orders O ON C.CustomerID = O.CustomerID 
INNER JOIN OrderItems OI ON O.OrderID = OI.OrderID 
INNER JOIN Products P ON OI.ProductID = P.ProductID; 

SELECT *
FROM   PACKT_VIEW_1
WHERE  PerProductSpending > 14.99;


