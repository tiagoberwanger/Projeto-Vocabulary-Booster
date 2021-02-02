SELECT
UCASE(CONCAT(t1.FIRST_NAME, ' ', t1.LAST_NAME)) AS "Nome completo",
t2.START_DATE AS "Data de início" ,
t1.SALARY AS "Salário" 
FROM hr.employees AS t1
INNER JOIN hr.job_history AS t2
ON t1.employee_id = t2.employee_id
WHERE MONTH(t2.START_DATE) BETWEEN 01 AND 03
ORDER BY CONCAT(t1.FIRST_NAME, ' ', t1.LAST_NAME), t2.START_DATE;
