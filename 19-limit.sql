-- limitleyerek çek
SELECT * FROM employees
LIMIT 3;

-- en büyük olanı al
SELECT * FROM employees
ORDER BY hourly_pay DESC
LIMIT 1;

-- belirli bir aralığı al (3.den başla, 2 tane limitle)
SELECT * FROM employees
LIMIT 3, 2; 