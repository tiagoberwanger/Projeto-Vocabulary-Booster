USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE Quantidade INT;
SELECT
COUNT(j.EMPLOYEE_ID)
FROM employees AS e
INNER JOIN job_history AS j
ON e.EMPLOYEE_ID = j.EMPLOYEE_ID
WHERE email = e.EMAIL
INTO Quantidade;
RETURN Quantidade;
END $$
DELIMITER ;
