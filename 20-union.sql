-- union yapılacaksa column sayıları aynı olmalı

-- iki table'ı birleştirip göstermek
SELECT employee_id AS id, CONCAT(first_name, " ", last_name) AS full_name FROM employees
UNION
SELECT id, CONCAT(firstName, " ", lastName) AS full_name FROM customers;


-- iki table'ı birleştir ortak varsa da tekrar ettir
SELECT employee_id AS id, CONCAT(first_name, " ", last_name) AS full_name FROM employees
UNION ALL
SELECT id, CONCAT(firstName, " ", lastName) AS full_name FROM customers;