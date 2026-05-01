# 📊 Superstore SQL Analysis

This project contains SQL queries used to analyze a retail Superstore dataset using SQLite.  
It demonstrates core SQL skills including aggregation, grouping, filtering, joins, NULL handling, date transformation, and business analysis.

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

To practice SQL joins, it was split into three separate tables:

### Orders Table
Contains:
- Order_ID  
- Order_Date  
- Ship_Date  
- Ship_Mode  
- Customer_ID  
- Product_ID  
- Sales  

### Customers Table
Contains:
- Customer_ID  
- Customer_Name  
- Segment  
- City  
- State  
- Region  

### Products Table
Contains:
- Product_ID  
- Product_Name  
- Category  
- Sub_Category  

---

## 🔍 SQL Analysis Performed

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

## 🔗 JOIN Queries

11. Order details with customer name and product name  
12. Total sales for each customer  
13. Total sales for each product category  
14. Which customers bought from which product categories  
15. Customers with zero orders (LEFT JOIN + NULL check)  

---

## 🧠 Key Learnings

- Using `GROUP BY` with aggregate functions (`SUM`, `AVG`, `COUNT`)  
- Using `COUNT(DISTINCT ...)` for accurate metrics  
- Understanding `INNER JOIN` vs `LEFT JOIN`  
- Writing multi-table JOIN queries  
- Handling NULL values  
- Working with denormalized datasets  
- Creating relational tables from a single dataset  
- Parsing dates in SQLite  

---

## ⚙️ Tools Used

- SQLite  
- DB Browser for SQLite  
- GitHub  

---

## ⚠️ Challenges Faced

- Dataset originally had only one table  
- Created separate tables manually for JOIN practice  
- Handled inconsistent date formats (`DD/MM/YYYY`)  
- Managed missing leading zeros in dates  
- Debugged SQL syntax and column issues  

---

## 🖼️ Sample Output

<img src="https://github.com/user-attachments/assets/a568eb7e-d735-48c9-b1a8-7548bf502b42" width="500" alt="SQL Output"/>

---

## 🚀 How to Run

1. Clone this repository  
2. Open the `.sql` file in SQLite / DB Browser  
3. Import the CSV dataset  
4. Create tables  
5. Run queries  

---

## 📌 Project Outcome

This project helped strengthen practical SQL skills commonly asked in interviews and data analyst roles:

- Aggregations  
- Joins  
- Business problem solving  
- Data cleaning  
- SQL debugging  
