DROP PROCEDURE IF EXISTS num;
DELIMITER $$
CREATE PROCEDURE num
(	
)
BEGIN
	DECLARE inner_num INT DEFAULT 2; 
    DECLARE str_even VARCHAR(100) DEFAULT "";    
    
    WHILE inner_num < 10 DO
		SET str_even = CONCAT(str_even, inner_num, ",");
		SET inner_num = inner_num + 2;   
    END WHILE;
    
    SET str_even = CONCAT(str_even, inner_num);
    SELECT str_even;
END $$

CALL num();