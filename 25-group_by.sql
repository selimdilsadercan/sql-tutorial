-- group_by'da sadece fonksiyonlu ve group_by yaptığım column'ları çağırabiliirm
-- rollup = grand total, super aggregate value

-- customerId'si aynı olanları toplayarak yap
SELECT customerId, SUM(amount)
FROM transactions
GROUP BY customerId;

-- group by olan yerde WHERE yerine HAVING kullanıyoruz
SELECT hire_date, SUM(hourly_pay)
FROM employees
GROUP BY hire_date
HAVING COUNT(hourly_pay) = 2;

-- column toplamını göstermek
SELECT hire_date, SUM(hourly_pay)
FROM employees
GROUP BY hire_date WITH ROLLUP;