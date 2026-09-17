# 📊 SQL Exploratory Data Analysis Project

## 📌 1. Project Overview

This project focuses on performing **Exploratory Data Analysis (EDA) using SQL** on a prepared sales dataset from a bicycle manufacturing and sales business.

The analysis is performed on data from the **Gold layer of the database**, where the data has already been cleaned, transformed, and structured for analysis. Therefore, this project focuses on **understanding the business through the available data rather than performing data cleaning**.

The EDA is performed to understand **overall business performance, product performance, customer contributions, and changes in sales over time**. SQL is used to explore the data, calculate key business metrics, and identify patterns and trends.

The goal of this project is to turn the prepared data into **meaningful business insights** that can help management better understand the company's sales, products, and customers and identify areas that may require further investigation.

---

## 🎯 2. Business Context & Objectives

The company is a **bicycle manufacturing and sales business** that sells bicycles, components, accessories, and clothing to customers.

The company has accumulated a large amount of historical sales data along with information about its customers and products. However, management needs a clearer understanding of overall business performance and the factors contributing to it.

### 🔍 Management wants to understand:

* How is the business performing overall?
* Which products and product categories contribute most to sales?
* How are customers and sales distributed across different markets?
* How has business performance changed over time?
* Which products and customers show stronger or weaker performance?
* What key patterns and trends can be identified from the historical data?

---

## 🗂️ 3. Dataset Information

### 📋 Type of Data

* **Business Domain:** Retail / Sales / Product / Customer Data
* **Business Industry:** Bicycle Manufacturing and Sales
* **Data Structure:** Relational Database
* **Analytical Role:** Fact + Dimension Data

### 🏗️ Dataset Overview

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

## 🔎 4. Analysis

### 🧭 Approach

The project follows a structured analytical process:

### 1️⃣ Understand the Database

Review the available tables, columns, relationships, and data ranges.

### 2️⃣ Explore Dimensions

Analyze customer and product attributes such as country, gender, category, subcategory, and product line.

### 3️⃣ Examine Key Metrics

Calculate total sales, total orders, total quantity, average values, and other important measures.

### 4️⃣ Analyze Magnitude

Compare sales across products, categories, customers, and countries.

### 5️⃣ Analyze Rankings

Identify top-performing products and customers.

### 6️⃣ Analyze Trends

Examine sales and order behavior over time.

### 7️⃣ Analyze Performance

Compare different entities based on sales, quantity, profit, or other relevant measures.

### 8️⃣ Segment the Data

Group customers or products into meaningful segments.

### 9️⃣ Analyze Revenue Contribution

Understand how individual products, categories, and customers contribute to total revenue.

### 🔟 Prepare Reports

Create summarized customer and product reports that consolidate important analytical results.

---

## 💡 5. Detailed Observations / Findings

This section presents the key findings identified during the exploratory data analysis.

The findings will summarize important observations related to:

* 📈 Overall business performance
* 🚲 Product and category performance
* 👥 Customer performance
* 📅 Sales trends over time
* 💰 Revenue contribution
* 🧩 Customer and product segments
* 🔎 Other significant patterns identified during the analysis

---

## 💼 6. Recommendations

Based on the findings from the exploratory data analysis, this section will provide **data-driven recommendations and areas for further investigation**.

The recommendations will focus on areas such as:

* 🚲 Product performance
* 👥 Customer contribution
* 📈 Sales trends
* 💰 Revenue opportunities
* 🔎 Areas showing relatively stronger or weaker performance

The recommendations will be based on the findings identified from the SQL analysis rather than assumptions.
