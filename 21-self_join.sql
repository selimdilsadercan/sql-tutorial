-- bir table'daki içsel relation'ı birleştirip göstermek
SELECT *
FROM customers AS a
INNER JOIN customers AS b
ON a.id = b.arkadasId;

-- bir table'daki içsel relation'ı birleştirip göstermek
SELECT *
FROM customers AS a
LEFT JOIN customers AS b
ON a.id = b.arkadasId;

-- bir table'daki içsel relation'ı birleştirip göstermek
SELECT a.id, a.firstName, a.lastName, CONCAT(b.firstName, " ", b.lastName) AS "reffered_by"
FROM customers AS a
INNER JOIN customers AS b
ON a.id = b.arkadasId;