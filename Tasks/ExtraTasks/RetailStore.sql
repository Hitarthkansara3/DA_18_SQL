CREATE DATABASE Retail;

USE Retail;

SELECT * FROM RetailSales;

SELECT
    COUNT(*) AS Total_Rows,
    SUM(CASE WHEN Transaction_ID IS NULL THEN 1 ELSE 0 END) AS Missing_Transaction_ID,
    SUM(CASE WHEN Customer_ID IS NULL THEN 1 ELSE 0 END) AS Missing_Customer_ID,
    SUM(CASE WHEN Category IS NULL THEN 1 ELSE 0 END) AS Missing_Category,
    SUM(CASE WHEN Product_ID IS NULL THEN 1 ELSE 0 END) AS Missing_Product_ID,
    SUM(CASE WHEN Unit_Price IS NULL THEN 1 ELSE 0 END) AS Missing_Unit_Price,
    SUM(CASE WHEN Quantity IS NULL THEN 1 ELSE 0 END) AS Missing_Quantity,
    SUM(CASE WHEN Total_Amount IS NULL THEN 1 ELSE 0 END) AS Missing_Total_Amount,
    SUM(CASE WHEN Payment_Method IS NULL THEN 1 ELSE 0 END) AS Missing_Payment_Method,
    SUM(CASE WHEN Sales_Channel IS NULL THEN 1 ELSE 0 END) AS Missing_Sales_Channel,
    SUM(CASE WHEN Transaction_Date IS NULL THEN 1 ELSE 0 END) AS Missing_Transaction_Date,
    SUM(CASE WHEN Status_Flag IS NULL THEN 1 ELSE 0 END) AS Missing_Status_Flag
FROM RetailSales;

SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'RetailSales';

SELECT
    COUNT(*) AS Total_Rows,
    SUM(CASE WHEN Transaction_ID IS NULL THEN 1 ELSE 0 END) AS Missing_Transaction_ID,
    SUM(CASE WHEN Customer_ID IS NULL THEN 1 ELSE 0 END) AS Missing_Customer_ID,
    SUM(CASE WHEN Category IS NULL THEN 1 ELSE 0 END) AS Missing_Category,
    SUM(CASE WHEN Item IS NULL THEN 1 ELSE 0 END) AS Missing_Item,
    SUM(CASE WHEN Price_Per_Unit IS NULL THEN 1 ELSE 0 END) AS Missing_Price_Per_Unit,
    SUM(CASE WHEN Quantity IS NULL THEN 1 ELSE 0 END) AS Missing_Quantity,
    SUM(CASE WHEN Total_Spent IS NULL THEN 1 ELSE 0 END) AS Missing_Total_Spent,
    SUM(CASE WHEN Payment_Method IS NULL THEN 1 ELSE 0 END) AS Missing_Payment_Method,
    SUM(CASE WHEN Location IS NULL THEN 1 ELSE 0 END) AS Missing_Location,
    SUM(CASE WHEN Transaction_Date IS NULL THEN 1 ELSE 0 END) AS Missing_Transaction_Date,
    SUM(CASE WHEN Discount_Applied IS NULL THEN 1 ELSE 0 END) AS Missing_Discount_Applied
FROM dbo.RetailSales;

SELECT * FROM RetailSales;

-- Check Duplicated --
SELECT
    Transaction_ID,
    COUNT(*) AS Duplicate_Count
FROM dbo.RetailSales
GROUP BY Transaction_ID
HAVING COUNT(*) > 1;

-- Check Null and Invalid numerical values
SELECT *
FROM dbo.RetailSales
WHERE Price_Per_Unit < 0
   OR Quantity <= 0
   OR Total_Spent < 0
   OR Price_Per_Unit IS NULL
   OR Quantity IS NULL
   OR Total_Spent IS NULL;
