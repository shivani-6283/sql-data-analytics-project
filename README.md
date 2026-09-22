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
* What is the distribution of customers and sold quantity across countries?
* What are the top 5 best-selling and bottom 5 lowest-selling products?
* What does the overall picture look like for product price ranges and customer spending and loyalty behaviour?
* How has business performance changed over time, and what key trends and patterns can be identified?
  
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

#### 🚲 `gold.dim_products` — Dimension Table

Contains information about the products sold by the company, including:

* Product name
* Category
* Subcategory
* Cost
* Product line

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

### 🔎 Key Findings & Insights

---

### 📊 Overall Business Performance

- **Total Sales:** 29,356,250
- **Total Quantity Sold:** 60,423 units
- **Average Selling Price:** 486
- **Total Orders:** 27,659
- **Total Products:** 295
- **Total Unique Customers:** 18,484
  
---

### 🏆 Sales Contribution by Category and Product

**Top Performing Category**  
Bikes generated **28,316,272**, contributing **96.5% of total revenue**.

**Top Performing Product**  
Mountain-200 Black, 46 generated **1,373,454**, contributing **4.68% of total revenue**.

---

### 🌍 Geographic Distribution

**Customer and Sold Item Distribution by Country**

| Country | Customers | Sold Items |
|---|---:|---:|
| United States | 7,482 | 20,481 |
| Australia | 3,591 | 13,346 |
| Canada | 1,571 | 7,630 |
| United Kingdom | 1,913 | 6,910 |
| Germany | 1,780 | 5,626 |
| France | 1,810 | 5,559 |
| Undefined (N/A) | 337 | 871 |

💡 **Key Insight:**  
The **United States** has the highest number of both customers (**7,482**) and sold items (**20,481**), while **337 customers** and **871 sold items** have no country information defined.

---

### 📈 Best vs. Lowest Selling Products

#### 🔝 Top 5 Best-Selling Products

1. **Mountain-200 Black, 46** — 1,373,454
2. **Mountain-200 Black, 42** — 1,363,128
3. **Mountain-200 Silver, 38** — 1,339,394
4. **Mountain-200 Silver, 46** — 1,301,029
5. **Mountain-200 Black, 38** — 1,294,854

#### 🔻 Top 5 Lowest-Selling Products

1. **Racing Socks - L** — 2,430
2. **Racing Socks - M** — 2,682
3. **Patch Kit / 8 Patches** — 6,382
4. **Bike Wash - Dissolver** — 7,272
5. **Touring Tire Tube** — 7,440

---

### 💰 Product Pricing & Customer Segmentation

#### 💵 Product Price Distribution

- **Under 100:** 110 products
- **100 to 500:** 101 products
- **500 to 1,000:** 45 products
- **Above 1,000:** 39 products

#### 👥 Customer Segmentation (Loyalty & Spend)

Customers are categorized based on **customer lifespan (account age) and lifetime spending**:

- **VIP** (≥ 12 months lifespan & > 5,000 spend): **1,655 customers**
- **Regular** (≥ 12 months lifespan & ≤ 5,000 spend): **2,198 customers**
- **New** (< 12 months lifespan): **14,631 customers**

---

### 📅 Business Trends and Seasonality

#### 📊 Business Performance Change Over Time

**2011 → 2012**

- **Sales:** Decreased from **7,075,088 to 5,842,231 (-17.4%)**.
- **Customers:** Increased from **2,216 to 3,255 (+46.9%)**.
- **Quantity Sold:** Increased from **2,216 to 3,397 (+53.3%)**.
- **Overall:** Customer growth and quantity sold did not translate into higher total sales.

**2012 → 2013**

- **Sales:** Increased from **5,842,231 to 16,344,878 (+179.8%)**.
- **Customers:** Increased from **3,255 to 17,427 (+435.5%)**.
- **Quantity Sold:** Increased from **3,397 to 52,807 (+1,454.8%)**.
- **Overall:** 2013 recorded strong growth across sales, customers, and quantity sold.

#### 📈 Overall Trend

Business performance fluctuated between **2011 and 2012** but increased substantially in **2013**.

#### 🔄 Seasonality Patterns

The monthly analysis indicates a seasonal pattern. Business activity tends to be stronger in **June** and during **October–December**, with **December being the strongest month** across sales, customers, and quantity.

---

> 📝 **Data Note:** 2010 includes only **December sales**, while **2014** includes only **January sales**. As these years do not represent complete annual periods, they were **excluded from year-over-year business performance and seasonality analysis** to avoid misleading comparisons.

---

## 💼 6. Recommendations

### 🚲 Expand high-performing products

Bikes generate **96.5% of total revenue**, with **Mountain-200 models among the top-selling products**. The business should focus on these top-performing models and **explore opportunities to expand the range of similar products to drive further sales**.

### 💰 Sell more higher-value items

Since **2012** sales dropped because customers purchased more lower-priced products, the business should focus on **promoting higher-value items** to increase revenue instead of relying only on selling more items overall.

### 📅 Use seasonal demand for planning

**June and October–December** have higher activity. The business can **prepare inventory and marketing activities in advance** to meet higher demand and increase sales during these peak periods.

### 🤝 Focus on customer retention

With **14,631 new customers**, the business can focus on keeping them engaged and encouraging repeat purchases to turn more of them into **Regular and VIP customers**, helping increase long-term sales.

### 📉 Improve underperforming products

Review low-selling products and make changes to their **pricing or promotion** to help boost their sales.

### 🌎 Strengthen high-potential markets

The **US** is our largest market in terms of customers and sold items. The business can study the **products and customer patterns** that perform well in the US and use these insights to **increase sales in the US and explore growth opportunities in similar markets**.
