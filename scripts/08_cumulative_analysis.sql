/*
===============================================================================
Cumulative Analysis
===============================================================================

Purpose:
    - Calculate running totals and cumulative averages for key metrics.
    - Monitor how business performance builds up over time.
    - Understand overall progress and long-term performance patterns.

SQL Functions Applied:
    - Window Functions: SUM() OVER(), AVG() OVER()
===============================================================================
*/

---Calculate Running Total Sales and Moving Average Price Over Time /
---Track Yearly Sales Growth and Average Price Trends Over Time

SELECT
	order_date,
	total_sales,
	SUM(total_sales) OVER (ORDER BY order_date) AS running_total_sales,
	AVG(avg_price) OVER (ORDER BY order_date) AS moving_average_price
FROM
(
    SELECT 
        DATETRUNC(year, order_date) AS order_date,
        SUM(sales_amount) AS total_sales,
        AVG(price) AS avg_price
    FROM gold.fact_sales
    WHERE order_date IS NOT NULL
    GROUP BY DATETRUNC(year, order_date)
) t
