-- JOIN = INNER JOIN

-- iki table'da sadece ortak olanları alıyor (include gibi çalışıyor)
SELECT *
FROM transactions INNER JOIN customers
ON transactions.customerId = customers.id;

-- iki table'da sol tarafı komple alıyor ortak olanları birleştiriyor (include gibi çalışıyor)
SELECT *
FROM transactions LEFT JOIN customers
ON transactions.customerId = customers.id;

-- iki table'da sağ tarafı komple alıyor ortak olanları birleştiriyor (include gibi çalışıyor)
SELECT *
FROM transactions RIGHT JOIN customers
ON transactions.customerId = customers.id;