-- table'dan hepsini çek
SELECT * 
FROM employees;

-- table'dan belirli column'ları çek
SELECT first_name, last_name
FROM employees;

-- table'dan aynı olanları tekrar yapmadan çek
SELECT DISTINCT first_name
FROM employees;

-- column sırasını istediğimiz gibi seçebiliriz
SELECT hire_date, first_name
FROM employees;

-- idsi 1 olan item'i çek
SELECT * 
FROM employees
WHERE employee_id = 1;

-- hourly_pay'i 30'dan büyük olan itemları çek
SELECT * 
FROM employees
WHERE hourly_pay >= 30;

-- hire_date'i null olan itemları çek
SELECT * 
FROM employees
WHERE hire_date IS NULL;