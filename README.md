# 📊 Superstore SQL Analysis

This project contains SQL queries used to analyze a retail Superstore dataset using SQLite.
It demonstrates core SQL skills including aggregation, grouping, filtering, and handling real-world data issues.



## 📁 Dataset

* The dataset contains transactional sales data from a retail store
* Includes information about:

  * Customers
  * Products
  * Regions
  * Order dates
  * Sales


## 🔍 Analysis Performed

The following business questions were solved using SQL:

1. Total sales by region
2. Top 5 products by total sales
3. Average sales per category
4. Monthly revenue analysis
5. Number of unique customers per state
6. Sales by category and sub-category
7. Top 3 customers by total sales
8. Region with highest average sales per order
9. Number of orders per year
10. Category with highest total sales

## 🧠 Key Learnings

* Using `GROUP BY` with aggregate functions (`SUM`, `AVG`, `COUNT`)
* Applying `COUNT(DISTINCT ...)` for accurate metrics
* Handling non-standard date formats (`DD/MM/YYYY`)
* Parsing and transforming date values using SQLite functions
* Writing clean and readable SQL queries

## ⚙️ Tools Used

* SQLite
* DB Browser for SQLite
* GitHub

## ⚠️ Challenges Faced

* The dataset contained inconsistent date formats (no leading zeros)
* SQLite does not directly support `DD/MM/YYYY` format
* Solved by using string functions like `substr()` and `instr()` to extract year and month


## 🖼️ Sample Outputs
<img src="https://github.com/user-attachments/assets/a568eb7e-d735-48c9-b1a8-7548bf502b42" width="500" alt="Top Products by Sales"/>

## 🚀 How to Use

1. Download or clone the repository
2. Open the `.sql` file in SQLite or DB Browser
3. Import the dataset (`.csv`)
4. Run queries to explore insights


