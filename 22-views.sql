-- bir table görünümü tanımlıyosun
CREATE VIEW employee_attendance AS 
SELECT first_name, last_name
FROM employees;

-- table görünümu çağır
SELECT * FROM employee_attendance;

-- table görünümünü sil
DROP VIEW employee_attendance;