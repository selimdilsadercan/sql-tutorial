-- eğer relation varsa direkt silemezsin
DELETE FROM customers
WHERE id = 2;

-- eğer silinsin istiyosan bu geçici olarak silmeni sağlar
SET foreign_key_checks = 0

-- table oluştururken on delete atamak
CREATE TABLE transactions (
	id INT PRIMARY KEY AUTO_INCREMENT,
  amount INT,
  customerId INT,
  FOREIGN KEY(customerId) REFERENCES customers(id) ON DELETE SET NULL
);

-- hali hazırda olan bir table'a on delete'li relation atamadan önce düz olanı sil
ALTER TABLE transactions
DROP FOREIGN KEY transactions_to_customers;

-- hali hazırda olan bir table'a on delete'li relation atamak
ALTER TABLE transactions
ADD CONSTRAINT transactions_to_customers
FOREIGN KEY(customerId) REFERENCES customers(id) ON DELETE SET NULL;

-- hali hazırda olan bir table'a cascade'li relation atamak
ALTER TABLE transactions
ADD CONSTRAINT transactions_to_customers
FOREIGN KEY(customerId) REFERENCES customers(id) ON DELETE CASCADE;
