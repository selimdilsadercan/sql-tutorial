-- kontrol mekanizması olan bir table oluşturduk
CREATE TABLE products (
  product_id INT UNIQUE,
  product_name VARCHAR(25),
  price INT,
  CONSTRAINT check_price CHECK (price <= 100)
);

-- bir table'a kontrol mekanizması eklemek
ALTER TABLE employees
ADD CONSTRAINT check_hourly_pay CHECK (hourly_pay <= 5.00);

-- bir check constraint'i silmek
ALTER TABLE employees
DROP CHECK check_hourly_pay;