# 🛒 Zepto Inventory Management & Analytics System (PostgreSQL)

A PostgreSQL-based inventory analytics system inspired by **Zepto's quick-commerce inventory model**.  
This project focuses on **inventory management, product analysis, pricing insights, stock monitoring, and business intelligence using SQL and PostgreSQL advanced concepts**.

---

##  Project Overview

The objective of this project is to simulate and analyze a **real-world Zepto inventory dataset** using PostgreSQL.

The system stores product inventory information such as:

- Product Category
- Product Name
- MRP
- Discount Percentage
- Selling Price
- Stock Availability
- Product Weight
- Inventory Quantity
- Supplier Details

The project also performs:

✔ Data Cleaning  
✔ Inventory Analysis  
✔ Revenue Estimation  
✔ Discount Analysis  
✔ Stock Monitoring  
✔ Business Intelligence Queries

---

##  Features

### 1. Data Exploration
- Total records count
- Sample dataset preview
- Unique product categories
- Stock availability analysis
- Duplicate product identification

### 2. Data Cleaning
- Null value checking
- Removal of invalid products (`MRP = 0`)
- Price conversion from **Paise → Rupees**

### 3. Business Analytics Queries
- Top discounted products
- High MRP out-of-stock items
- Category-wise revenue estimation
- Premium products with low discounts
- Best value products (price/gram)
- Inventory weight analysis
- Category-wise average discounts
- Product segmentation (Low / Medium / Bulk)

### 4. Relational Database Design
Added supplier relationship using:

- Primary Keys
- Foreign Keys
- Table Relationships

### 5. Advanced PostgreSQL Concepts
This project includes:

✅ Joins (`INNER JOIN`, `LEFT JOIN`)  
✅ Common Table Expressions (**CTEs**)  
✅ Window Functions (`RANK()`)  
✅ PostgreSQL Functions (`PL/pgSQL`)  
✅ Triggers  
✅ Data Validation Logic  
✅ Automation Logic  
✅ Logging Mechanism

---

##  Database Schema

### Main Table: `zepto`

| Column Name | Data Type |
|-------------|-----------|
| sku_id | SERIAL PRIMARY KEY |
| category | VARCHAR(120) |
| name | VARCHAR(150) |
| mrp | NUMERIC(8,2) |
| discountPercent | NUMERIC(5,2) |
| availabilityQuantity | INTEGER |
| discountedSellingPrice | NUMERIC(8,2) |
| weightInGms | INTEGER |
| outOfStock | BOOLEAN |
| quantity | INTEGER |

### Supplier Table

| Column Name | Data Type |
|-------------|-----------|
| supplier_id | SERIAL PRIMARY KEY |
| supplier_name | VARCHAR(150) |
| city | VARCHAR(100) |

---



##  Sample Business Questions Solved

### Q1. Top 10 products with highest discounts

### Q2. High-MRP products currently out of stock

### Q3. Estimated revenue by category

### Q4. Premium products with low discount

### Q5. Top categories with highest discounts

### Q6. Best value products based on price per gram

### Q7. Product classification:
- Low
- Medium
- Bulk

### Q8. Total inventory weight per category

---

##  Tech Stack

- PostgreSQL
- pgAdmin
- SQL
- PL/pgSQL

---


## 🔮 Future Improvements

- Java Spring Boot Integration
- REST APIs
- Inventory Dashboard
- Real-time Stock Updates
- MongoDB Integration
- Advanced Query Optimization

---
SIGN - Amol Satsangi 
---
