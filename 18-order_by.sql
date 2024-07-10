-- ascending olarak sırala
SELECT * FROM employees
ORDER BY last_name;

-- ascending olarak sırala
SELECT * FROM employees
ORDER BY last_name ASC;

-- descending olarak sırala
SELECT * FROM employees
ORDER BY last_name DESC;

-- birden fazla order koymak
SELECT * FROM transactions
ORDER BY customerId DESC, amount DESC;