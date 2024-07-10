-- bir procedure oluşturmak
DELIMITER $$
CREATE PROCEDURE seed_data()
BEGIN
  INSERT INTO employees
  VALUES (2, "Selim", "Ercan", 32, "2023-01-31"),
        (3, "Ahmet", "Ercan", 23, "2023-01-31"),
        (4, "Mehmet", "Ercan", 41, "2023-01-31"),
        (5, "Niyazi", "Ercan", 231, "2023-01-31");
END $$
DELIMITER ;

-- oluşturulan procedure'ı çağırmak
CALL seed_data();

-- bir procedure'ı silmek
DROP PROCEDURE seed_data;

-- variable alan bir procedure oluşturmak
DELIMITER $$
CREATE PROCEDURE find_customer(IN id INT)
BEGIN
  SELECT * FROM employees
  WHERE employee_id = id;
END $$
DELIMITER ;

-- oluşturulan variablelı procedure'ı çağırmak
CALL find_customer(2);
