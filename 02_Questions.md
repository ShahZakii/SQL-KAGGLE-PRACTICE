# SQL Basic Practice Questions

## Dataset: Sales

### SELECT

1. Display all columns from the `sales` table.

2. Display only the `Order ID`, `Amount`, `Profit`, and `Quantity` columns.

3. Display the first 10 records from the `sales` table.

4. Display all unique `Category` values.

5. Display all unique `PaymentMode` values.

---

## WHERE / Filtering

6. Find all orders where `Amount` is greater than 5000.

7. Find all orders where `Profit` is greater than 1000.

8. Find all orders where `Quantity` is greater than 5.

9. Find all orders where `Category` is `Electronics`.

10. Find all orders where `PaymentMode` is `UPI`.

11. Find all orders where `Amount` is between 1000 and 5000.

12. Find all orders where `Quantity` is less than or equal to 3.

13. Find all orders where `Category` is either `Electronics` or `Furniture`.

14. Find all orders where `Amount` is greater than 5000 AND `Profit` is greater than 500.

15. Find all orders where `PaymentMode` is `UPI` OR `PaymentMode` is `Credit Card`.

---

## ORDER BY

16. Display all orders sorted by `Amount` from highest to lowest.

17. Display all orders sorted by `Profit` from lowest to highest.

18. Find the top 5 orders with the highest `Amount`.

19. Find the top 5 orders with the highest `Profit`.

20. Find the 10 orders with the lowest `Quantity`.

---

## Aggregate Functions

21. Find the total `Amount` using `SUM()`.

22. Find the total `Profit` using `SUM()`.

23. Find the average `Amount` using `AVG()`.

24. Find the maximum `Amount` using `MAX()`.

25. Find the minimum `Amount` using `MIN()`.

26. Count the total number of records using `COUNT()`.

---

## GROUP BY

27. Find the total `Amount` for each `Category`.

28. Find the total `Profit` for each `PaymentMode`.

29. Find the average `Amount` for each `Category`.

30. Find the total `Amount` for each `State`.

---

 ## String and Pattern Matching

31. Find all customers whose name starts with the letter `A`.

32. Find all customers whose name ends with the letter `a`.

33. Find all customers whose name contains `Kumar`.

34. Find all orders from cities that start with the letter `M`.

35. Find all states containing the word `Pradesh`.

## DISTINCT

36. Display all unique states.

37. Display all unique cities.

38. Display all unique sub-categories.

39. Display all unique combinations of `Category` and `Sub-Category`.

40. Count the total number of unique cities.


## Topics Covered

- SELECT
- DISTINCT
- WHERE
- AND
- OR
- IN
- BETWEEN
- ORDER BY
- LIMIT
- SUM()
- AVG()
- MIN()
- MAX()
- COUNT()
- GROUP BY
- String and Pattern matching
- DISTINCT
