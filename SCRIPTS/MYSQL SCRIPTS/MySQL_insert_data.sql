CREATE DATABASE EMPLOYEE;
USE EMPLOYEE;

CREATE TABLE department (
    departmentNo INT PRIMARY KEY,
    departmentName VARCHAR(20) NOT NULL,
    departmentLoc VARCHAR(50) NOT NULL);
    
INSERT INTO department (departmentNo, departmentName, departmentLoc) VALUES (1,'Engg','Texas');

DROP TABLE IF EXISTS department;
CREATE TABLE department (
    departmentNo INT PRIMARY KEY AUTO_INCREMENT,
    departmentName VARCHAR(20) NOT NULL,
    departmentLoc VARCHAR(50) DEFAULT 'NJ',
    departmentEstDate DATETIME DEFAULT NOW()
);

INSERT INTO department (
    departmentName,
    departmentLoc
)
VALUES
('Administration',DEFAULT),
('IT',DEFAULT);

INSERT INTO department (
    departmentName,
    departmentLoc)
VALUES
('Administration','NYC');

CREATE TABLE departmentdemo AS
	SELECT *
	FROM department;

SELECT * FROM department;
SELECT * FROM departmentdemo;

DELETE FROM department 
WHERE departmentNo>2;

INSERT INTO department(departmentname,departmentLoc) VALUES('Sales','LV');

DELETE FROM department 
WHERE departmentNo=5;

ALTER TABLE department AUTO_INCREMENT = 3;

INSERT INTO department(departmentname,departmentLoc) VALUES('Sales','LV');

SELECT * FROM department;

UPDATE department 
SET departmentEstDate=now();

CREATE TABLE products
(
	ProductID INT NOT NULL AUTO_INCREMENT,
	ProductCategoryID INT NOT NULL DEFAULT 1,
	ProductName CHAR(50) NOT NULL,
	NetRetailPrice DECIMAL(10, 2) NULL,
	WholesalePrice DECIMAL(10, 2) NOT NULL,
	PRIMARY KEY (ProductID)
);

INSERT INTO products (ProductName,NetRetailPrice,WholesalePrice) 
VALUES 
('Pancake batter','5.99','3.99'),
('Breakfast cereal','5.99','3.99'),
('Sriracha sauce','5.99','3.99');

SELECT * FROM products;

SHOW TABLES IN EMPLOYEE;

