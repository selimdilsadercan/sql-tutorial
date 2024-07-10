-- Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column.  
-- To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.

-- row'da bir yeri değiştir
UPDATE employees
SET hourly_pay = 10.25
WHERE employee_id = 2;

-- row'da birden fazla yeri değiştir
UPDATE employees
SET hourly_pay = 10.25,
    last_name = "Yılmaz",
    hire_date = NULL
WHERE employee_id = 2;

-- tüm row'ları değiştir
UPDATE employees
SET hourly_pay = 10.25

-- bir row'u sil
DELETE FROM employees
WHERE employee_id = 2 AND hourly_pay = 32.00;

-- tüm row'ları sil
DELETE FROM employees;


