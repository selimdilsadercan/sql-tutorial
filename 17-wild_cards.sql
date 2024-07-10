-- a ile başlayan isimleri çek
SELECT * FROM employees
WHERE first_name LIKE "a%";

-- et ile biten isimleri çek
SELECT * FROM employees
WHERE first_name LIKE "%et";

-- ikinci harfi e olan isimleri çek
SELECT * FROM employees
WHERE first_name LIKE "_e%";

-- ocak ayında olan tarihleri çek
SELECT * FROM employees
WHERE hire_date LIKE "____-01-__";