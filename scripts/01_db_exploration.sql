/*
=============================================================================== 
Database Structure Overview 
===============================================================================

Purpose: - Review the available tables and identify their corresponding schemas.
         - Examine column names and other metadata for selected tables.

===============================================================================
*/

-- Retrieve a list of all tables in the database
SELECT 
    TABLE_CATALOG, 
    TABLE_SCHEMA, 
    TABLE_NAME, 
    TABLE_TYPE
FROM INFORMATION_SCHEMA.TABLES;

-- Retrieve all columns for a specific table (dim_customers)
SELECT 
    COLUMN_NAME, 
    DATA_TYPE, 
    IS_NULLABLE, 
    CHARACTER_MAXIMUM_LENGTH
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'dim_customers';

----Understand table size
SELECT 
  'dim_customers' AS table_name,
   COUNT(*) AS total_rows
FROM gold.dim_customers
  
UNION ALL
  SELECT 
  'dim_products',
   COUNT(*) 
 FROM gold.dim_products

UNION ALL
SELECT 
  'fact_sales',
   COUNT(*) 
FROM gold.fact_sales;


---- Structure of tables
SELECT TOP 10 * FROM gold.dim_customers;
SELECT TOP 10 * FROM gold.dim_products;
SELECT TOP 10 * FROM gold.fact_sales;

