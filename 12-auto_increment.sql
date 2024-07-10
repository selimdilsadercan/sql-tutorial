-- auto_increment AI olarak yazıyo
-- silsen bile eski id'ler tekrar etmiyor
-- auto increment 1'den başlıyor

-- auto increment'li bir table oluşturmak
CREATE TABLE transactions (
  transaction_id INT PRIMARY KEY AUTO_INCREMENT,
  amount DECIMAL(5, 2)
);

-- auto increment olmayanlar dışındakileri insert'te belirtmek lazım
INSERT INTO transactions (amount)
VALUES (12.32);

-- auto increment başlangıç değerini değiştirmek
ALTER TABLE transactions
AUTO_INCREMENT = 1000;