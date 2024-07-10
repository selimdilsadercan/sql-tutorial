-- eleman sayısını çek
SELECT COUNT(amount) AS count
FROM transactions;

-- max elemanı çek
SELECT MAX(amount)
FROM transactions;

-- min elemanı çek
SELECT MIN(amount)
FROM transactions;

-- ortalamayı al
SELECT AVG(amount)
FROM transactions;

-- topla
SELECT SUM(amount)
FROM transactions;

-- iki texti birleştir
SELECT employee_id, CONCAT(first_name, " ", last_name) AS full_name, hire_date, hourly_pay
FROM employees;

