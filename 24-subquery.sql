-- subquery kullanmak
SELECT * FROM customers
WHERE id >= (SELECT AVG(id) FROM customers);