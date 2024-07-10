-- relation olan bir table oluştur
CREATE TABLE transactions (
	id INT PRIMARY KEY AUTO_INCREMENT,
  amount INT,
  customerId INT,
  FOREIGN KEY(customerId) REFERENCES customers(id)
);

-- bir relation'ı silmek
ALTER TABLE transactions
DROP FOREIGN KEY transactions_ibfk_1;

-- isimli bir relation oluşturmak
ALTER TABLE transactions
ADD CONSTRAINT transactions_to_customers
FOREIGN KEY(customerId) REFERENCES customers(id);

-- isimsiz bir relation oluşturmak
ALTER TABLE transactions
FOREIGN KEY(customerId) REFERENCES customers(id);