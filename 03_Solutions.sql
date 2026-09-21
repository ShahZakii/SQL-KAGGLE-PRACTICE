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

-- Q26: Count the total number of records using COUNT().
SELECT COUNT(order_id) AS num_of_records
FROM orders;

-- GROUP BY

-- Q27: Find the total Amount for each Category.
SELECT SUM(amount)
FROM orders
GROUP BY category;

-- Q28: Find the total Profit for each PaymentMode.
SELECT SUM(profit)
FROM orders
GROUP BY paymentmode;

-- Q29: Find the average Amount for each Category.
SELECT AVG(amount)
FROM orders
GROUP BY category;

-- Q30: Find the total Amount for each State.
SELECT SUM(amount)
FROM orders
GROUP BY state;

-- String and Pattern Matching

-- Q31: Find all customers whose name starts with the letter A.
SELECT *
FROM orders 
WHERE CustomerName LIKE 'A%';

-- Q32: Find all customers whose name ends with the letter a.
SELECT *
FROM orders 
WHERE CustomerName LIKE '%a';

-- Q33: Find all customers whose name contains Kumar.
SELECT *
FROM orders 
WHERE CustomerName LIKE '%Kumar%';

-- Q34: Find all orders from cities that start with the letter M.
SELECT *
FROM orders 
WHERE cities LIKE 'M%';

-- Q35: Find all states containing the word Pradesh.
SELECT *
FROM orders 
WHERE cities LIKE '%Pradesh%';

-- DISTINCT

-- Q36: Display all unique states.
SELECT DISTINCT states
FROM orders;

-- Q37: Display all unique cities.
SELECT DISTINCT cities 
FROM orders;

-- Q38: Display all unique sub-categories.
SELECT DISTINCT sub_categories
FROM orders;

-- Q39: Display all unique combinations of Category and Sub-Category.
SELECT DISTINCT category, sub_category
FROM orders;

-- Q40: Count the total number of unique cities.
SELECT COUNT(DISTINT cities) AS total_unique_cities
FROM orders;

-- GROUP BY

-- Q41: Find the total sales amount for each city.
SELECT SUM(sales) AS total_sales
FROM orders
GROUP BY city;

-- Q42: Find the total profit for each state.
SELECT SUM(profit) AS total_profit
FROM orders
GROUP BY state;

-- Q43: Find the total quantity sold for each category.
SELECT SUM(quantity) AS total_quantity
FROM orders
GROUP BY category;

-- Q44: Find the number of orders in each city.
SELECT COUNT(sales) AS number_of_sales
FROM orders
GROUP BY city;

-- Q45: Find the average profit for each category.
SELECT AVG(profit) AS avg_profit
FROM orders
GROUP BY category;

-- Q46: Find the average quantity sold for each sub-category.
SELECT AVG(quantity) AS avg_quantity
FROM orders
GROUP BY sub_category;

-- Q47: Find the maximum amount for each category.
SELECT MAX(amount) AS max_amount
FROM orders
GROUP BY category;

-- Q48: Find the minimum profit for each state.
SELECT MIN(profit) AS min_profit
FROM orders
GROUP BY state;

-- HAVING

-- Q49: Find categories where the total sales amount is greater than 10,000.
SELECT category, SUM(sales) 
FROM orders
GROUP BY category
HAVING SUM(sales) > 10000;

-- Q50: Find states where the total profit is greater than 5,000.
SELECT states, SUM(profit)
FROM orders
GROUP BY states
HAVING SUM(profit) > 5000;

-- Q51: Find cities that have more than 10 orders.
SELECT city, 
	   COUNT(order) AS order_count
FROM orders
GROUP BY city
HAVING COUNT(order) > 10;

-- Q52: Find categories where the average amount is greater than 1,000.
SELECT categories,
  	   AVG(amount) AS avg_amount
FROM orders
GROUP BY categories
HAVING AVG(amount) > 1000;

-- Q53: Find payment modes used in more than 20 orders.
SELECT payment_mode, COUNT(order_id) AS order_count
FROM orders
GROUP BY payment_mode
HAVING COUNT(order_id) > 20;
