-- ===========================================
-- Project 02 - SQL Sales Analysis
-- File: 03_Aggregate_Functions.sql
-- Author: Himanshu Kumar Singh
-- ===========================================

-- 1. Writing a query for Total Profit.
SELECT SUM(Profit) AS Total_Profit
FROM Superstore;

-- 2. What is the average sale?
SELECT AVG(Sales) AS Average_Sales
FROM Superstore;

-- 3. What is the average profit?
SELECT AVG(Profit) AS AVERAGE_PROFIT
FROM Superstore;

-- 4. What is the highest sale ever recorded?
SELECT MAX(Sales) AS Highest_Sale
FROM Superstore;

-- 5. What is the smallest sale?
SELECT MIN(Sales) AS Lowest_Sale
FROM Superstore;

-- 6. How many orders are in our database?
SELECT COUNT(*) AS Total_Orders
FROM Superstore;
