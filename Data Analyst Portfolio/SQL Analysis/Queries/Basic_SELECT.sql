-- ===========================================
-- Project 02 - SQL Sales Analysis
-- File: 01_Basic_SELECT.sql
-- Author: Himanshu Kumar Singh
-- ===========================================

-- 1. Show me everything
SELECT *
FROM Superstore;

-- 2. Want only sales
SELECT Sales
FROM Superstore;

-- 3. Show me profit, sales and category
SELECT Sales,
Profit,
Category
FROM Superstore;

-- 4. Show me Customer name, City and state
SELECT "Customer Name",
City,
State
FROM Superstore;

use double columns with things with a space

-- 5. Show me only 10 rows
SELECT *
FROM Superstore
LIMIT 10;

-- 6. Show me the first 25 rows, but only the Sales, Profit, and Category columns.
SELECT Sales, Profit, Category
FROM Superstore
LIMIT 25;

-- 7. What categories do we sell? (Distinct)
SELECT DISTINCT Category
FROM Superstore;

ALIASIS (AS) is used to rename things

-- 8. What are the Total Sales?
SELECT SUM(Sales) AS Total_Sales
FROM Superstore;
