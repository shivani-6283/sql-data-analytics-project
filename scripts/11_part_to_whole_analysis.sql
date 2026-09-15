/*
===============================================================================
Part-to-Whole Analysis
===============================================================================
Purpose:
    - To identify the contribution of each product category to overall sales.
    - To compare sales performance across product categories.
    - To calculate the percentage contribution of each category to total sales.

SQL Functions Used:
    - SUM(): Calculates total sales by category.
    - SUM() OVER(): Calculates overall sales for percentage comparison.
    - CAST(), ROUND(): Used to calculate and format percentage contribution.
===============================================================================
*/

-- Which categories contribute the most to overall sales?
WITH category_sales AS (
    SELECT
        p.category,
        SUM(f.sales_amount) AS total_sales
    FROM gold.fact_sales f
    LEFT JOIN gold.dim_products p
        ON p.product_key = f.product_key
    GROUP BY p.category
)
SELECT
    category,
    total_sales,
    SUM(total_sales) OVER () AS overall_sales,
    ROUND((CAST(total_sales AS FLOAT) / SUM(total_sales) OVER ()) * 100, 2) AS percentage_of_total
FROM category_sales
ORDER BY total_sales DESC;
