-- ===========================================
-- Project 02 - SQL Sales Analysis
-- File: 05_Final_Analysis.sql
-- Author: Himanshu Kumar Singh
-- ===========================================

-- Q1. Which region generated the highest total sales?
SELECT Region,
SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY Region
ORDER BY Total_Sales DESC;
 ANS:-West

-- Q2. Which category generated the highest profit?
SELECT Category,
SUM(Profit) AS Total_Profit
FROM Superstore
GROUP BY Category
ORDER BY Total_Profit DESC;

-- Q3.what are the TOP 10 most profitable products?
SELECT "Sub-Category",
SUM(Profit) AS Total_Profit
FROM Superstore
GROUP BY "Sub-Category"
ORDER BY Total_Profit DESC
LIMIT 10;

-- Q4. Which customer segment has the highest average sales?
SELECT Segment,
AVG(Sales) AS Average_Sales
FROM Superstore
GROUP BY Segment
ORDER BY Average_Sales DESC;

-- Q5. Which cities generated more than $100,000 in sales?
SELECT City,
SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY CITY
HAVING Total_Sales >= 100000;

-- Q6. Which sub-category sold the highest quantity?
SELECT "Sub-Category",
SUM(quantity) AS Highest_Quantity
FROM Superstore
GROUP BY "Sub-Category"
ORDER BY Highest_Quantity DESC;

-- Q7. Which states are making a loss?
SELECT State,
SUM(Profit) AS Loss
FROM Superstore
GROUP BY State
HAVING Loss < 0;

-- Q8. Show the Top 5 customers by total sales.
SELECT "Customer Name",
       SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY "Customer Name"
ORDER BY Total_Sales DESC
LIMIT 5;

-- Q9. Which ship mode generates the highest average profit?
SELECT "Ship Mode",
AVG(Profit) AS Average_Profit
FROM Superstore
GROUP BY "Ship Mode"
ORDER BY Average_Profit Desc;

-- Q10. Write a short Executive Summary based on your SQL findings.

ANS. The West region generated the highest total sales.
Technology was the most profitable product category.
The Consumer segment had the highest average sales.
Several states reported an overall loss, indicating areas that require attention.
Certain cities exceeded $100,000 in total sales, making them key revenue contributors.
