CREATE DATABASE IF NOT EXISTS `lesson3`; -- `lesson3` - название столбца, таблицы, но не строчка

-- "ё" на англ. раскладке клавиатуры 

-- 2. Выбираем БД для работы
USE lesson3;

-- 3. Создание таблицы
DROP TABLE IF EXISTS staff; 
CREATE TABLE staff
(
	id INT PRIMARY KEY AUTO_INCREMENT, -- PRIMARY KEY  = NOT NULL UNUQIE
    firstname VARCHAR(45),
	lastname VARCHAR(45),
    post VARCHAR(45),
    seniority INT,
	salary DECIMAL(8, 2), 
    age INT
);
INSERT staff (firstname, lastname, post, seniority, salary, age)
VALUES
	 ('Вася', 'Петров', 'Начальник', 40, 100000, 60),
	 ('Петр', 'Власов', 'Начальник', 8, 70000, 30),
	 ('Катя', 'Катина', 'Инженер', 2, 70000, 25),
	 ('Саша', 'Сасин', 'Инженер', 12, 50000, 35),
	 ('Иван', 'Петров', 'Рабочий', 40, 30000, 59),
	 ('Петр', 'Петров', 'Рабочий', 20, 55000, 60),
	 ('Сидр', 'Сидоров', 'Рабочий', 10, 20000, 35),
	 ('Антон', 'Антонов', 'Рабочий', 8, 19000, 28),
	 ('Юрий', 'Юрков', 'Рабочий', 5, 15000, 25),
	 ('Максим', 'Петров', 'Рабочий', 2, 11000, 19),
	 ('Юрий', 'Петров', 'Рабочий', 3, 12000, 24),
	 ('Людмила', 'Маркина', 'Уборщик', 10, 10000, 49);
 
SELECT *
FROM staff;

-- Отсортируйте данные по полю заработная плата (salary) в порядке: убывания; возрастания
SELECT *
FROM staff
ORDER BY salary DESC;

SELECT *
FROM staff
ORDER BY salary;

-- Выведите 5 максимальных заработных плат (saraly)
SELECT *
FROM staff
ORDER BY salary DESC
LIMIT 5;

SELECT 
	post AS "Должность",
    SUM(salary) AS "СУММАРНАЯ ЗП"
FROM staff
GROUP BY post;


-- Найдите кол-во сотрудников с специальностью (post) «Рабочий» в возрасте от 24 до 49 лет включительно.

SELECT
 COUNT(post) AS "Количество сотрудников"
FROM staff
WHERE post="Рабочий" and age BETWEEN 24 and 29;

-- Найдите количество специальностей

SELECT 
	COUNT(DISTINCT post) AS "Колличество специальностей"
FROM staff;

-- Выведите специальности, у которых средний возраст сотрудников меньше 30 лет включительно

SELECT post
FROM staff
GROUP BY post
HAVING AVG(age) <=30;



 

