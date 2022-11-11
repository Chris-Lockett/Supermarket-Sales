-- Creating a database
CREATE DATABASE supermarket_sales;

-- Selecting the new database
USE supermarket_sales;

-- Checking the number of different customers

SELECT COUNT(DISTINCT Invoice_ID)
FROM sales;

-- Updating the branch names from A,B,C to actual store names
UPDATE sales
SET Branch = 'Tom_Thumb'
WHERE Branch = 'A';

UPDATE sales
SET Branch = 'Albertsons'
WHERE Branch = 'B';

UPDATE sales
SET Branch = 'Vons'
WHERE Branch = 'C';

-- Updating city names to Texas cities

UPDATE sales
SET City = 'Dallas'
WHERE City = 'Yangon';

UPDATE sales
SET City = 'Addison'
WHERE City = 'Naypyitaw';

UPDATE sales
SET City = 'Irving'
WHERE City = 'Mandalay';

-- Getting product line sales by month & Q1

SELECT Product_Line, 
	   SUM(Total) AS January_Totals
FROM sales
WHERE Date BETWEEN '2019-01-01' AND '2019-01-31'
GROUP BY Product_Line;

SELECT Product_Line, 
	   SUM(Total) AS February_Totals
FROM sales
WHERE Date BETWEEN '2019-02-01' AND '2019-02-28'
GROUP BY Product_Line;

SELECT Product_Line, 
	   SUM(Total) AS March_Totals
FROM sales
WHERE Date BETWEEN '2019-03-01' AND '2019-03-31'
GROUP BY Product_Line;

SELECT Product_Line, 
	   SUM(Total) AS Q1_Totals
FROM sales
GROUP BY Product_Line;

-- Getting male & female sales by month & Q1

SELECT Gender, 
	   SUM(Total) AS January_Totals
FROM sales
WHERE Date BETWEEN '2019-01-01' AND '2019-01-31'
GROUP BY Gender;

SELECT Gender, 
	   SUM(Total) AS February_Totals
FROM sales
WHERE Date BETWEEN '2019-02-01' AND '2019-02-28'
GROUP BY Gender;

SELECT Gender, 
	   SUM(Total) AS March_Totals
FROM sales
WHERE Date BETWEEN '2019-03-01' AND '2019-03-31'
GROUP BY Gender;

SELECT Gender, 
	   SUM(Total) AS Q1_Totals
FROM sales
GROUP BY Gender;

-- Getting Customer_Type sales by month & Q1

SELECT Customer_Type, 
	   SUM(Total) AS January_Totals_Customer_Type
FROM sales
WHERE Date BETWEEN '2019-01-01' AND '2019-01-31'
GROUP BY Customer_Type;

SELECT Customer_Type, 
	   SUM(Total) AS February_Totals_Customer_Type
FROM sales
WHERE Date BETWEEN '2019-02-01' AND '2019-02-28'
GROUP BY Customer_Type;

SELECT Customer_Type, 
	   SUM(Total) AS March_Totals_Customer_Type
FROM sales
WHERE Date BETWEEN '2019-03-01' AND '2019-03-31'
GROUP BY Customer_Type;

SELECT Customer_Type, 
	   SUM(Total) AS Customer_Type_Q1_Totals
FROM sales
GROUP BY Customer_Type;

-- Getting January City sales by month for Dallas

SELECT City, 
	   SUM(Total) AS January_Dallas_Totals
FROM sales
WHERE Date BETWEEN '2019-01-01' AND '2019-01-31' AND City = 'Dallas'
GROUP BY City;

SELECT City, 
	   SUM(Total) AS February_Dallas_Totals
FROM sales
WHERE Date BETWEEN '2019-02-01' AND '2019-02-28' AND City = 'Dallas'
GROUP BY City;

SELECT City, 
	   SUM(Total) AS March_Dallas_Totals
FROM sales
WHERE Date BETWEEN '2019-03-01' AND '2019-03-31' AND City = 'Dallas'
GROUP BY City;

-- Getting February City sales for Addison

SELECT City, 
	   SUM(Total) AS January_Addison_Totals
FROM sales
WHERE Date BETWEEN '2019-01-01' AND '2019-01-31' AND City = 'Addison'
GROUP BY City;

SELECT City, 
	   SUM(Total) AS February_Addison_Totals
FROM sales
WHERE Date BETWEEN '2019-02-01' AND '2019-02-28' AND City = 'Addison'
GROUP BY City;

SELECT City, 
	   SUM(Total) AS March_Addison_Totals
FROM sales
WHERE Date BETWEEN '2019-03-01' AND '2019-03-31' AND City = 'Addison'
GROUP BY City;

-- Getting March City sales for Irving

SELECT City, 
	   SUM(Total) AS January_Irving_Totals
FROM sales
WHERE Date BETWEEN '2019-01-01' AND '2019-01-31' AND City = 'Irving'
GROUP BY City;

SELECT City, 
	   SUM(Total) AS February_Irving_Totals
FROM sales
WHERE Date BETWEEN '2019-02-01' AND '2019-02-28' AND City = 'Irving'
GROUP BY City;

SELECT City, 
	   SUM(Total) AS March_Irving_Totals
FROM sales
WHERE Date BETWEEN '2019-03-01' AND '2019-03-31' AND City = 'Irving'
GROUP BY City;

-- Getting all sales for Q1 by city

SELECT City, 
	   SUM(Total) AS Q1_Totals
FROM sales
GROUP BY City;

-- Getting store sales total for Q1

SELECT Branch,
	   SUM(Total) AS Store_Totals
FROM sales
GROUP BY Branch;