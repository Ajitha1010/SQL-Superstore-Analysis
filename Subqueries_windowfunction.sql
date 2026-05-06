# 📊 Superstore SQL Analysis

This project contains SQL queries used to analyze a retail Superstore dataset using SQLite. It demonstrates core SQL skills including aggregation, joins, filtering, date transformation, window functions, and business analytics.

---

## 📁 Dataset

The dataset contains transactional retail sales data including:

- Customers  
- Products  
- Orders  
- Regions  
- Sales  
- Order Dates  

---

## 🛠 Database Design

The original dataset was a single table.

To practice SQL joins and database design, it was split into three separate tables:

### Orders Table
- Order_ID  
- Order_Date  
- Ship_Date  
- Ship_Mode  
- Customer_ID  
- Product_ID  
- Sales  

### Customers Table
- Customer_ID  
- Customer_Name  
- Segment  
- City  
- State  
- Region  

### Products Table
- Product_ID  
- Product_Name  
- Category  
- Sub_Category  

---

# 🔍 SQL Analysis Performed

## Basic SQL Analysis

### GROUP BY Queries
1. Total sales by region  
2. Top 5 products by total sales  
3. Average sales per category  
4. Monthly revenue analysis  
5. Unique customers by state  
6. Sales by category and sub-category  
7. Top 3 customers by total sales  
8. Region with highest average sales per order  
9. Number of orders per year  
10. Category with highest total sales  

---

## JOIN Queries

1. Order details with customer name and product name  
2. Total sales for each customer  
3. Total sales for each product category  
4. Which customers bought from which product categories  
5. Customers with zero orders using LEFT JOIN + NULL check  

---

# Advanced SQL Analysis (Window Functions)

## 1. 7-Day Rolling Sales Average by Region

Used:
- AVG() OVER()
- PARTITION BY
- Rolling window functions

Business Value:
Tracks short-term sales trends across different regions.

---

## 2. Month-over-Month Revenue Growth

Used:
- LAG()
- Date transformation
- Growth calculations

Formula:

(Current Month Sales - Previous Month Sales) / Previous Month Sales

Business Value:
Helps identify growth trends and seasonal sales patterns.

---

## 3. Customer Spending Rank

Used:
- DENSE_RANK()

Business Value:
Identifies high-value customers based on total spending.

---

## 4. Running Total of Sales Over Time

Used:
- SUM() OVER()

Business Value:
Tracks cumulative business growth over time.

---

# 🧠 Key Learnings

- SQL aggregation (SUM, AVG, COUNT)
- Multi-table joins
- LEFT JOIN
- NULL handling
- Date parsing in SQLite
- Window functions
- Rolling averages
- Revenue growth analysis
- Customer segmentation
- Running totals
- Business-focused SQL analysis

# 🚀 How to Run

1. Clone this repository  
2. Import the dataset into SQLite / DB Browser  
3. Create tables  
4. Run SQL scripts  

---

# 📌 Project Outcome

This project helped strengthen practical SQL skills commonly required for:

- Data Analyst roles  
- SQL interviews  
- Business analytics projects  
- Reporting dashboards  

It evolved from basic SQL practice into a business analytics portfolio project using advanced SQL concepts.
