-- table oluştur
CREATE TABLE employees (
  employee_id INT, 
  first_name VARCHAR(50)
);

-- table'dan hepsini seç
SELECT * FROM employees;

-- table'i yeniden adlandır
RENAME TABLE employees TO workers;

-- table'i sil
DROP TABLE employees;

-- table'a column ekle
ALTER TABLE employees
ADD phone_number VARCHAR(15);

-- table'dan column çıkart
ALTER TABLE employees
DROP COLUMN phone_number;

-- table'dan ekleme çıkartma
ALTER TABLE employees
ADD phophone_number VARCHAR(15),
DROP COLUMN hire_date; 

-- column ismini değiştir
ALTER TABLE employees
RENAME COLUMN phone_number TO email;

-- column type'ını değiştir
ALTER TABLE employees
MODIFY COLUMN email VARCHAR(15);

-- column yerini değiştir
ALTER TABLE employees
MODIFY COLUMN email VARCHAR(50)
AFTER last_name;

-- column'ı başa al
ALTER TABLE employees
MODIFY COLUMN email VARCHAR(50)
FIRST;