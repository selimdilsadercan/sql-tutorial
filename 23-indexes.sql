-- indexler arama yapmayı hızlandırıyor, update'i biraz yavaşlatıyor

-- table'daki indexleri listele
SHOW INDEXES FROM customers;

-- yeni bir index oluşturma
CREATE INDEX last_name_index
ON customers(lastName);

-- çoklu sütunlu index oluşturma
CREATE INDEX full_name_index
ON customers(firstName, lastName);

-- bir index'i silmek
ALTER TABLE customers
DROP INDEX last_name_index;