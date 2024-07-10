-- oluşturlan her unique column index oluşturuyor
-- unique kalın, not null altı çizili görünüyor
-- primary key = unique + not null ama sadece 1 tane primary key olabilir
-- primary key PK olarak işaretli

-- unique column'lu table oluşturma
CREATE TABLE products (
  product_id INT UNIQUE,
  product_name VARCHAR(25),
  price DECIMAL(4, 2)
);

-- table'daki bir column'ı unique yapmak (birden fazla unique olabilir)
ALTER TABLE employees
ADD CONSTRAINT UNIQUE(employee_id);

-- bir column'un unique'likten çıkartmak
ALTER TABLE employees
DROP INDEX employee_id;

-- null olmamasını istediğimiz columnlar
CREATE TABLE products (
  product_id INT NOT NULL UNIQUE,
  product_name VARCHAR(25) NOT NULL,
  price DECIMAL(4, 2)
);

-- bir column'ı not null yapmak
ALTER TABLE employees
MODIFY employee_id INT NOT NULL;

-- primary key olan bir table oluşturmak
CREATE TABLE transactions (
  transaction_id INT PRIMARY KEY,
  amount DECIMAL(5, 2)
);

-- bir column'ı sonradan primary key yapmak
ALTER TABLE employees
ADD CONSTRAINT PRIMARY KEY(transaction_id);