-- ===========================================
-- Project 02 - SQL Sales Analysis
-- File: 04_HAVING.sql
-- Author: Himanshu Kumar Singh
-- ===========================================

-- 1. Show categories whose average sales are greater than 250.
SELECT Category,
AVG(Sales) AS Average_Sales
FROM Superstore
GROUP BY Category
HAVING Average_Sales > 250

-- 2. Show categories whose total sales are greater than $700,000.
SELECT Category,
       SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY Category
HAVING SUM(Sales) > 700000;
