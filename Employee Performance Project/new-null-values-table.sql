/* Creating a new table with the null values for later review & updates */

CREATE TABLE employee_performance_backup AS 
SELECT * FROM employee_performance WHERE FALSE;