USE EMPLOYEE;

UPDATE department
SET departmentLoc='GA',departmentEstDate = Now()+INTERVAL 1 DAY;

UPDATE department D
    SET D.departmentLoc='NYC',
    D.departmentEstDate = Now()+ INTERVAL 1 DAY;

SELECT * FROM department;

USE PACKT_ONLINE_SHOP;

UPDATE Products
SET NetRetailPrice = NetRetailPrice * 0.90;

SELECT * FROM Products;


