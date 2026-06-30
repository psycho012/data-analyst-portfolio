-- ===========================================
-- Project 02 - SQL Sales Analysis
-- File: 04_GROUP_BY.sql
-- Author: Himanshu Kumar Singh
-- ===========================================

-- 1. What is the total profit by Region?
SELECT SUM(Profit) AS Total_Profit,
Region
FROM Superstore
GROUP BY Region;

-- 2. Total Quantity sold by Segment
SELECT Segment,
SUM(Quantity) AS Total_Quantity
FROM Superstore
GROUP BY Segment;

-- 3. Average Sales by Category
SELECT Category,
AVG(Sales) AS Average_Sales
FROM Superstore
GROUP BY Category;

-- 4. Total Profit by Region and Segment.
SELECT Region,
Segment,
SUM(Profit) AS Total_Profit
FROM Superstore
GROUP BY Region, Segment;

-- 5. Average Sales by Category and Sub-Category.
SELECT Category,
"Sub-Category",
AVG(Sales) AS Average_Sales
FRON Superstore
GROUP BY Category, "Sub-Category";

-- 6. Which category generated the highest sales?
SELECT Category,
       SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY Category
ORDER BY Total_Sales DESC;

-- 7. Show categories whose average sales are greater than 250.
SELECT Category,
AVG(Sales) AS Average_Sales
FROM Superstore
GROUP BY Category
HAVING Average_Sales > 250
