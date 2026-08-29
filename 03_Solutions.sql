-- Basic Questions. 

-- Q1: Display all columns from the sales table.
SELECT * FROM sales;

-- Q2: Display only the Order ID, Amount, Profit, and Quantity columns.
SELECT order_id,
	     amount,
	     profit,
	     quantity
FROM sales;

-- Q3: Display the first 10 records from the sales table.
SELECT * FROM sales 
LIMIT 10;

-- Q4: Display all unique Category values.
SELECT DISTINCT(category)
FROM sales;

-- Q5: Display all unique PaymentMode values.
SELECT DISTINCT(payment_mode)
FROM sales;

-- WHERE / Filtering

-- Q6: Find all orders where Amount is greater than 5000.
SELECT * 
FROM orders 
WHERE amount > 5000;

-- Q7: Find all orders where Profit is greater than 1000.
SELECT *
FROM orders 
WHERE profit > 1000;

-- Q8: Find all orders where Profit is greater than 1000.
SELECT *
FROM orders
WHERE profit > 1000;

-- Q9: Find all orders where Quantity is greater than 5.
SELECT *
FROM orders 
WHERE quantity > 5;

-- Q10: Find all orders where Category is Electronics.
SELECT *
FROM orders 
WHERE category = 'Electronics';

-- Q11: Find all orders where PaymentMode is UPI.
SELECT * 
FROM orders 
WHERE payment_mode = 'UPI';

-- Q12: Find all orders where Quantity is less than or equal to 3.
SELECT *
FROM orders 
WHERE quantity <= 3;

-- Q13: Find all orders where Category is either Electronics or Furniture.
SELECT *
FROM orders 
WHERE category IN ('electronics', 'furniture');

-- Q14: Find all orders where Amount is greater than 5000 AND Profit is greater than 500.
SELECT *
FROM orders 
WHERE amount > 5000
	AND profit > 500;

-- Q15: Find all orders where PaymentMode is UPI OR PaymentMode is Credit Card.
SELECT *
FROM orders 
WHERE paymentmode IN ('UPI','Credit Card');

-- ORDER BY

-- Q16: Display all orders sorted by Amount from highest to lowest.
SELECT *
FROM orders 
ORDER BY amount DESC;

-- Q17: Display all orders sorted by Profit from lowest to highest.
SELECT *
FROM orders 
ORDER BY profit ASC;

-- Q18: Find the top 5 orders with the highest Amount.
SELECT *
FROM orders 
ORDER BY amount DESC
LIMIT 5;

-- Q19: Find the top 5 orders with the highest Profit.
SELECT *
FROM orders 
ORDER BY profit DESC
LIMIT 5;

-- Q20: Find the 10 orders with the lowest Quantity.
SELECT *
FROM orders 
ORDER BY quantity ASC
LIMIT 10;

-- Aggregate Functions

-- Q21: Find the total Amount using SUM().
SELECT SUM(amount) AS total_amount
FROM orders;

-- Q22: Find the total Profit using SUM().
SELECT SUM(profit) AS total_profit
FROM orders;

-- Q23: Find the average Amount using AVG().
SELECT AVG(amount) AS avg_amount
FROM orders;

-- Q24: Find the maximum Amount using MAX().
SELECT MAX(amount) AS max_amount
FROM orders;

-- Q25: Find the minimum Amount using MIN().
SELECT MIN(amount) AS min_amount
FROM orders;

-- Q26:Count the total number of records using COUNT().
SELECT COUNT(order_id) AS num_of_records
FROM orders;
