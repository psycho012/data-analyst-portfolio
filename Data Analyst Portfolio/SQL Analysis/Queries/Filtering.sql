-- ===========================================
-- Project 02 - SQL Sales Analysis
-- File: 02_Filtering.sql
-- Author: Himanshu Kumar Singh
-- ===========================================

-- 1. Show me only Technology.
SELECT Category, "Sub-Category", Sales, Profit
FROM Superstore
WHERE Category = 'Technology';

-- 2. Show me Furniture OR Technology.
SELECT *
FROM Superstore
WHERE Category = 'Furniture'
OR Category = 'Technology';

-- 3. Show region east and west.
SELECT Category, Region, Sales
FROM Superstore
WHERE Region = 'East'
OR Region = 'West';

-- 4. What is the profit of Furniture and Technology?
SELECT Profit, Category
FROM Superstore
WHERE Category = 'Furniture'
OR Category = 'Technology';

-- 5. Show all orders where Sales are greater than 1000 OR Profit is greater than 500.
SELECT Profit, Sales
FROM Superstore
WHERE Profit > 500
OR Sales > 1000;

-- 6. Show all products that are not Furniture.
SELECT *
FROM Superstore
WHERE NOT Category = 'Furniture';

-- 7. Show Category and sales without Technology.
SELECT Category, Sales
FROM Superstore
WHERE NOT Category = 'Technology';

-- 8. Show me Furniture, Technology and Office Supplies.
SELECT Category
FROM Superstore
WHERE Category IN ('Technology' 'Furniture')

-- 9. Show me west and east region sales.
SELECT Region, Sales
FROM Superstore
WHERE Region IN ('West','East');

-- 10. Show products with Sales between 500 and 1000.
SELECT Sales
FROM Superstore
WHERE Sales BETWEEN 500 AND 1000;

-- 11. Show profit Category between 100-500.
SELECT Profit, Category
FROM Superstore
WHERE Profit BETWEEN 100 AND 500;

-- 12. Show all customers whose names start with A.
SELECT "Customer Name"
FROM Superstore
WHERE "Customer Name" LIKE 'A%';

-- 13. where the city starts with:
SELECT City
FROM Superstore
WHERE City LIKE 'R%';

-- 14. Show the Top 20 highest sales from the West region, but exclude Furniture, sorted from highest to lowest.
SELECT Region,Category,Sales
FROM Superstore
WHERE NOT Category = 'Furniture'
AND Region = 'West'
ORDER BY Sales DESC
LIMIT 20;
