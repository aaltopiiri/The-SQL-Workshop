USE PACKT_ONLINE_SHOP;

SELECT O.OrderNumber, O.OrderStatus, O.OrderDate, C.FirstName, C.LastName, C.Email
FROM Orders O 
JOIN Customers C 
	ON O.CustomerID = C.CustomerID;
    
SELECT C.FirstName, C.LastName, C.Email , O.OrderNumber, O.OrderStatus 
FROM Orders O 
RIGHT JOIN Customers C 
	ON O.CustomerID = C.CustomerID;     

SELECT C.FirstName, C.LastName, C.Email , O.OrderNumber, O.OrderStatus 
FROM Orders O 
RIGHT JOIN Customers C 
	ON O.CustomerID = C.CustomerID 
WHERE O.OrderNumber IS NULL;  

SELECT O.OrderNumber, O.OrderStatus, P.PaymentRef, P.PaymentType 
FROM Payments P 
LEFT JOIN Orders O ON P.OrderID = O.OrderID;

SELECT O.OrderNumber, O.OrderStatus,P.PaymentRef, P.PaymentType 
FROM Orders O 
LEFT JOIN Payments P 
	ON P.OrderID = O.OrderID;  
    
Create table Facecards (cardvalue varchar (50)); 
insert into Facecards (cardvalue) values ('King'); 
insert into Facecards (cardvalue) values ('Queen'); 
insert into Facecards (cardvalue) values ('Jack'); 
insert into Facecards (cardvalue) values ('Ace'); 

Create table CardSuit (suit varchar(50)); 
insert into CardSuit (suit) values ('Heart'); 
insert into CardSuit (suit) values ('Spade'); 
insert into CardSuit (suit) values ('Clubs'); 
insert into CardSuit (suit) values ('Diamond'); 

SELECT Facecards.cardvalue, CardSuit.suit
FROM Facecards CROSS JOIN CardSuit;


SELECT CONCAT(C.FirstName,' ',C.LastName) AS 'FULL NAME', C.Phone AS 'Phone Number' 
FROM Customers C 
UNION 
SELECT S.ContactPerson AS 'Full Name', S.PhoneNumber AS 'Phone Number' 
FROM Suppliers S;



    
