

CREATE DATABASE IF NOT EXISTS HOMEWORK1;
USE HOMEWORK1;
CREATE TABLE IF NOT EXISTS mobile_telephones (
	id INT PRIMARY KEY AUTO_INCREMENT ,
    mobile_name VARCHAR (45),
    proizvoditel VARCHAR(45),
    price INT,
    count INT

);

INSERT mobile_telephones ( mobile_name, proizvoditel, price,count)
VALUES 
	("S45","Samsung",900,5),
    ("S4","Apple",16000,3),
    ("A50","Samsung",1200,1),
    ("Q14","Samsung",500,10),
    ("14210","Nokia",100,5),
    ("A1","Nokia",9440,2);
    
SELECT mobile_name, proizvoditel, price
FROM mobile_telephones
WHERE count >2;

SELECT *
FROM mobile_telephones
WHERE proizvoditel = "Samsung";
