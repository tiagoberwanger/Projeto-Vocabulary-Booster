SELECT
CONCAT(t1.FIRST_NAME, ' ', t1.LAST_NAME) AS "Nome completo",
t3.JOB_TITLE AS "Cargo",
t2.START_DATE AS "Data de início do cargo",
t4.DEPARTMENT_NAME AS "Departamento" 
FROM hr.employees AS t1
INNER JOIN hr.job_history AS t2
ON t1.employee_id = t2.employee_id
INNER JOIN hr.jobs AS t3
ON t2.job_id = t3.job_id
INNER JOIN hr.departments AS t4
ON t2.department_id = t4.department_id
ORDER BY `Nome completo` DESC, `Cargo` ASC;
