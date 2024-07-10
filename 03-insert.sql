-- bir item ekle
INSERT INTO employees
VALUES (1, "Selim", "Ercan", 32, "31-01-2003");

-- çoklu item ekle
INSERT INTO employees
VALUES (2, "Selim", "Ercan", 32, "2023-01-31"),
       (3, "Ahmet", "Ercan", 23, "2023-01-31"),
       (4, "Mehmet", "Ercan", 41, "2023-01-31"),
       (5, "Niyazi", "Ercan", 231, "2023-01-31");

-- eksik bilgili item ekleme
INSERT INTO employees (employee_id, first_name, last_name)
VALUES (6, "Selim", "Ercan");