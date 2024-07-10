-- update trigger'ı oluşturmak
CREATE TRIGGER before_hourly_pay_update
BEFORE UPDATE ON employees
FOR EACH ROW
SET NEW.daily_pay = (NEW.hourly_pay * 24);

-- insert trigger'ı oluşturmak
CREATE TRIGGER before_hourly_pay_insert
BEFORE INSERT ON employees
FOR EACH ROW
SET NEW.daily_pay = (NEW.hourly_pay * 24);

-- delete trigger'ı oluşturmak
CREATE TRIGGER after_salary_delete
AFTER DELETE ON employees
FOR EACH ROW
UPDATE expenses
SET expense_total = expense_total - OLD.salary
WHERE expense_name = "salaries";

-- triggerları listeleme
SHOW TRIGGERS;