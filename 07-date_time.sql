-- date tarih, time saat, datetime ikisi bir
CREATE TABLE test (
  my_date DATE, -- 2024-07-10
  my_time TIME, -- 12:14:10
  my_datetime DATETIME -- 2024-07-10 12:14:10
);

INSERT INTO test 
VALUES (CURRENT_DATE(), CURRENT_TIME(), NOW());