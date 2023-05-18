-- Даны 2 таблицы, созданные следующим образом:
CREATE TABLE IF NOT EXISTS test_a (id INT, DATA VARCHAR(45));
CREATE TABLE IF NOT EXISTS test_b (id INT);
INSERT INTO test_a(id, DATA) VALUES
(10, 'A'),
(20, 'A'),
(30, 'F'),
(40, 'D'),
(50, 'C');
INSERT INTO test_b(id) VALUES
(10),
(30),
(50);


SELECT *
FROM test_a a
LEFT JOIN test_b b
    ON a.id=b.id
WHERE b.id IS NULL;



