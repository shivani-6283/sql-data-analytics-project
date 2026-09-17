# 📊 SQL Exploratory Data Analysis Project

## 📌 1. Project Overview

This project focuses on performing **Exploratory Data Analysis (EDA) using SQL** on a prepared sales dataset from a bicycle manufacturing and sales business.

The analysis uses data from the **Gold layer of the database**, where the data has already been cleaned, transformed, and structured for analysis. The focus of this project is **business exploration and meaningful insight generation**.

The analysis explores **overall business performance, product performance, customer contributions, and sales trends over time** using SQL.

---

## 🎯 2. Business Context & Objectives

The company is a **bicycle manufacturing and sales business** offering bicycles, components, accessories, and cycling clothing.

Management wants a clearer understanding of the company's overall performance and the factors contributing to it.

### 🔍 Key Business Questions

* How is the business performing overall?
* Which products and categories contribute most to sales?
* How are customers and sales distributed across different markets?
* How has business performance changed over time?
* Which products and customers show stronger or weaker performance?
* What key patterns and trends can be identified?
  
---
## 🗂️ 3. Dataset Information

### 📋 Data Overview

* **Business Domain:** Retail / Sales / Product / Customer
* **Industry:** Bicycle Manufacturing and Sales
* **Data Structure:** Relational Database
* **Analytical Model:** Star Schema

The dataset contains historical **sales, customer, and product data** and is organized into a simple **star schema** consisting of **one fact table and two dimension tables**.

### 📦 Tables

#### 🧾 `gold.fact_sales` — Fact Table

Contains transaction-level sales information, including:

* Order details
* Product and customer keys
* Order dates
* Quantity
* Price
* Sales amount

#### 👥 `gold.dim_customers` — Dimension Table

Contains customer information, including:

* Customer details
* Country
* Gender
* Marital status
* Birthdate
* Customer creation date

#### 🚲 `gold.dim_products` — Dimension Table

Contains information about the products sold by the company, including:

* Product name
* Category
* Subcategory
* Cost
* Product line
* Start date

The **`fact_sales`** table connects with the **`dim_customers`** and **`dim_products`** tables through their respective keys.

---

## 🔎 4. Analysis Approach

The EDA follows a structured approach:

1. **Database Exploration** — Understand tables, columns, relationships, and data ranges.
2. **Dimension Exploration** — Analyze customer and product attributes such as country, gender, category, subcategory, and product line.
3. **Key Metrics** — Calculate total sales, total orders, total quantity, average values, and other important measures.
4. **Magnitude & Rankings** — Compare sales across products, categories, customers, and countries & Identify top-performing products and customers.
5. **Trend Analysis** — Examine sales and order patterns over time.
6. **Performance Analysis** — Compare different entities based on sales, quantity, profit, or other relevant measures.
7. **Segmentation** — Group products and customers into meaningful segments.
8. **Revenue Contribution** — Understand how individual products, categories, and customers contribute to total revenue.
9. **Reporting** — Create summarized customer and product reports that consolidate important analytical results.

---

## 💡 5. Findings

This section presents the key insights identified from the SQL-based exploratory analysis, including observations related to:

* 📈 Business performance
* 🚲 Product and category performance
* 👥 Customer performance
* 📅 Sales trends
* 💰 Revenue contribution
* 🔎 Product and customer segments

---

## 💼 6. Recommendations

Recommendations will be based on the findings from the EDA and will highlight **areas of stronger or weaker performance, potential opportunities, and areas that may require further investigation**.


The recommendations will be based on the findings identified from the SQL analysis rather than assumptions.
