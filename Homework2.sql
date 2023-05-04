CREATE DATABASE IF NOT EXISTS homework2;


USE homework2;

DROP TABLE IF EXISTS sales;

CREATE TABLE IF NOT EXISTS sales(
id INT PRIMARY KEY AUTO_INCREMENT,
order_date VARCHAR(10),
count INT(3)
);

INSERT sales (order_date, count)
VALUES
		('2023-01-1',100),
		('2023-01-2',122),
        ('2023-01-3',1),
        ('2023-01-4',45),
        ('2023-01-5',459);
        
SELECT 
id AS 'id заказа',
IF (count < 100, 'Маленький заказ',
IF (count BETWEEN 100 AND 300, 'Средний заказ', 'Большой заказ')) 
AS 'Размер заказа'
FROM sales;

DROP TABLE IF EXISTS orders;

CREATE TABLE orders(
	id INT PRIMARY KEY AUTO_INCREMENT,
	sstatus VARCHAR(9)
);

INSERT orders( sstatus) 
VALUES 
	('OPEN'), 
	('OPEN'),
	('CLOSED'),
	('OPEN'),
	('CANCELLED');
	
SELECT *,
CASE
WHEN sstatus  = 'OPEN' THEN 'Order is in open state'
WHEN sstatus = 'CLOSED' THEN 'Order is closed'
WHEN sstatus = 'CANCELLED' THEN 'Order is cancelled'
END AS full_order_status
FROM orders;
