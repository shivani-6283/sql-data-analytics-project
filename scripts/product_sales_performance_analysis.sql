/*
===============================================================================
Product Sales Performance Analysis (Average Comparison & Year-over-Year)
===============================================================================
Purpose:
    - To analyze yearly sales performance for each product.
    - To compare yearly product sales against the product's average sales.
    - To measure year-over-year (YoY) changes in product sales.
    - To identify products with increasing, decreasing, or stable sales trends.
    - To benchmark each year's product sales against historical performance.

SQL Functions Used:
    - YEAR(): Extracts the year from the order date.
    - SUM(): Calculates total sales for each product and year.
    - AVG() OVER(): Calculates the average sales for each product across years.
    - LAG(): Retrieves the previous year's sales for YoY comparison.
    - CASE: Classifies sales performance as Above Avg, Below Avg, Increase,
            Decrease, or No Change.
===============================================================================
*/

/* Analyze the yearly performance of products by comparing their sales 
to both the average sales performance of the product and the previous year's sales */
WITH yearly_product_sales AS (
    SELECT
        YEAR(f.order_date) AS order_year,
        p.product_name,
        SUM(f.sales_amount) AS current_sales
    FROM gold.fact_sales f
    LEFT JOIN gold.dim_products p
        ON f.product_key = p.product_key
    WHERE f.order_date IS NOT NULL
    GROUP BY 
        YEAR(f.order_date),
        p.product_name
)
SELECT
    order_year,
    product_name,
    current_sales,
    -- Product average sales Analysis
    AVG(current_sales) OVER (PARTITION BY product_name) AS avg_sales,
    current_sales - AVG(current_sales) OVER (PARTITION BY product_name) AS diff_avg,
    CASE 
        WHEN current_sales - AVG(current_sales) OVER (PARTITION BY product_name) > 0 THEN 'Above Avg'
        WHEN current_sales - AVG(current_sales) OVER (PARTITION BY product_name) < 0 THEN 'Below Avg'
        ELSE 'Avg'
    END AS avg_change,
    -- Year-over-Year Analysis
    LAG(current_sales) OVER (PARTITION BY product_name ORDER BY order_year) AS py_sales,
    current_sales - LAG(current_sales) OVER (PARTITION BY product_name ORDER BY order_year) AS diff_py,
    CASE 
        WHEN current_sales - LAG(current_sales) OVER (PARTITION BY product_name ORDER BY order_year) > 0 THEN 'Increase'
        WHEN current_sales - LAG(current_sales) OVER (PARTITION BY product_name ORDER BY order_year) < 0 THEN 'Decrease'
        ELSE 'No Change'
    END AS py_change
FROM yearly_product_sales
ORDER BY product_name, order_year;
