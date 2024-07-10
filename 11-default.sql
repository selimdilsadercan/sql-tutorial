-- default değeri olan bir table oluşturmak
CREATE TABLE products (
  product_id INT UNIQUE,
  product_name VARCHAR(25),
  price INT DEFAULT 0
);

-- bir table'da default bir değer atamak
ALTER TABLE employees
ALTER hourly_pay SET DEFAULT 10.00;

-- default olmayanlar dışındakileri insert'te belirtmek lazım
INSERT INTO products (product_id, product_name)
VALUES (6, "Ürün 1");

-- bu hata verir
INSERT INTO products
VALUES (6, "Ürün 1");