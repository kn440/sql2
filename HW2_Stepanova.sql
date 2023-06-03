CREATE DATABASE IF NOT EXISTS lesson2; 
USE lesson2;

-- Задание 1

CREATE TABLE sales (
  id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
  order_date DATE,
  count_product int
);

INSERT INTO sales (order_date, count_product)
VALUES 
  ('2022-01-01', 156),('2022-01-02', 180),('2022-01-03', 21),('2022-01-04', 124),('2022-01-05', 341);

-- Задание 2 
SELECT * FROM sales; 
SELECT id, 
CASE
  WHEN count_product <=100 THEN "Маленький заказ"
  WHEN count_product >100 AND count_product<300  THEN "Средний заказ"
  ELSE "Большой заказ"
END AS status
FROM sales;

-- Задание 3
CREATE TABLE orders (
  id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
  employee_id VARCHAR(4) NOT NULL,
  amount DECIMAL(6,2),
  order_status VARCHAR(25)
);

INSERT INTO orders (employee_id, amount, order_status)
VALUES 
  ('e03', '15.00', 'OPEN'),('e01', '25.50', 'OPEN'),('e05', '100.70', 'CLOSED'),('e02', '22.18', 'OPEN'),('e04', '9.50', 'CANCELLED');

SELECT * FROM orders; 
SELECT id, employee_id, amount, order_status, 
CASE
  WHEN order_status = "OPEN" THEN "Order is in open state"
  WHEN order_status = "CLOSED" THEN "Order is closed"
  ELSE "Order is cancelled"
END AS status
FROM orders;