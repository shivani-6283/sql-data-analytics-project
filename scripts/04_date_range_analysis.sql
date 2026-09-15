/*
===============================================================================
Date Range Analysis
===============================================================================

Purpose:
    - Examine the starting and ending points of the available data.
    - Determine the range of historical data .

SQL Functions Applied:
    - MIN()
    - MAX()
    - DATEDIFF()
===============================================================================
*/

-- Find the first and last order date and Calculate the total duration in months
SELECT 
    MIN(order_date) AS first_order_date,
    MAX(order_date) AS last_order_date,
    DATEDIFF(MONTH, MIN(order_date), MAX(order_date)) AS order_range_months
FROM gold.fact_sales;

-- Find the youngest and oldest customer based on birthdate
SELECT
    MIN(birthdate) AS oldest_birthdate,
    DATEDIFF(YEAR, MIN(birthdate), GETDATE()) AS oldest_age,
    MAX(birthdate) AS youngest_birthdate,
    DATEDIFF(YEAR, MAX(birthdate), GETDATE()) AS youngest_age
FROM gold.dim_customers;
