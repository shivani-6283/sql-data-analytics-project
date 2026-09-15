/*
===============================================================================
Dimension Table Analysis
===============================================================================
Purpose:
- Review the available dimension tables and understand their data structure.
- Identify unique values and examine them in a specific order.

SQL Functions Applied:
- DISTINCT
- ORDER BY
=============================================================================== 
*/

-- Identify the unique countries represented in the customer data
SELECT DISTINCT 
    country 
FROM gold.dim_customers
ORDER BY country;

-- List the unique category, subcategory, and product
SELECT DISTINCT 
    category, 
    subcategory, 
    product_name 
FROM gold.dim_products
ORDER BY category, subcategory, product_name;
