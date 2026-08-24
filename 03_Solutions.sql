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
