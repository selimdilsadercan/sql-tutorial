-- and kullanımı
SELECT * FROM employees
WHERE last_name = "Ercan"
AND hourly_pay > 30;

-- and kullanımı
SELECT * FROM employees
WHERE last_name = "Ercan"
AND hourly_pay = 32 OR hourly_pay = 41;

-- not kullanımı
SELECT * FROM employees
WHERE NOT last_name = "Ercan"

-- between kulllanımı
SELECT * FROM employees
WHERE hourly_pay BETWEEN 20 AND 40;

-- in kullanımı
SELECT * FROM employees
WHERE last_name = "Ercan"
AND hourly_pay IN (32, 41);