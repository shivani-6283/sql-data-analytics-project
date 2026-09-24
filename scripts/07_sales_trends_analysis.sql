/*
===============================================================================
Change Over Time Analysis
===============================================================================

Purpose:
    - Examine how key business metrics change over different time periods.
    - Track increases, decreases, and overall trends over time.
    - Analyze possible seasonality in the data.

SQL Functions Applied:
    - DATEPART()
    - DATETRUNC()
    - FORMAT()
    - SUM()
    - COUNT()
    - AVG()
===============================================================================
*/

-- Analyse sales performance over time
--Group by Year only
SELECT
    YEAR(order_date) AS order_year,
    SUM(sales_amount) AS total_sales,
    COUNT(DISTINCT customer_key) AS total_customers,
    SUM(quantity) AS total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY YEAR(order_date)
ORDER BY YEAR(order_date);

--Group by Year and Month
SELECT
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    SUM(sales_amount) AS total_sales,
    COUNT(DISTINCT customer_key) AS total_customers,
    SUM(quantity) AS total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY YEAR(order_date), MONTH(order_date);

----YoY Sales change analyze 
SELECT
    YEAR(order_date) AS order_year,
    SUM(sales_amount) AS current_sale,
    LAG(SUM(sales_amount)) over(ORDER BY YEAR(order_date) ) as py_sale,
    SUM(sales_amount)-LAG(SUM(sales_amount)) over(ORDER BY YEAR(order_date)) as diff_py
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY YEAR(order_date)
ORDER BY YEAR(order_date);
