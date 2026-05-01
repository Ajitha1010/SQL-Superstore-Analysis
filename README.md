📊 Superstore SQL Analysis

This project contains SQL queries used to analyze a retail Superstore dataset using SQLite.
It demonstrates core SQL skills including:

Aggregation
Grouping
Filtering
Joins
NULL handling
Date transformation
Business analysis queries
📁 Dataset

The dataset contains transactional retail sales data including:

Customers
Products
Orders
Regions
Sales
Order Dates
🛠 Database Design

The original dataset was a single table.

To practice SQL joins, it was normalized into three separate tables:

Orders Table

Contains:

Order_ID
Order_Date
Ship_Date
Ship_Mode
Customer_ID
Product_ID
Sales
Customers Table

Contains:

Customer_ID
Customer_Name
Segment
City
State
Region
Products Table

Contains:

Product_ID
Product_Name
Category
Sub_Category
🔍 SQL Analysis Performed
GROUP BY Queries
Total sales by region
Top 5 products by total sales
Average sales per category
Monthly revenue analysis
Unique customers by state
Sales by category and sub-category
Top 3 customers by total sales
Region with highest average sales per order
Number of orders per year
Category with highest total sales
🔗 JOIN Queries
Order details with customer name and product name
Total sales for each customer
Total sales for each product category
Which customers bought from which product categories
Customers with zero orders (LEFT JOIN + NULL check)
🧠 Key Learnings
GROUP BY with aggregate functions (SUM, AVG, COUNT)
COUNT(DISTINCT) usage
INNER JOIN vs LEFT JOIN
Multi-table joins
Handling missing values using NULL
Working with denormalized datasets
Converting one large table into multiple relational tables
Date parsing in SQLite
⚙️ Tools Used
SQLite
DB Browser for SQLite
GitHub
⚠️ Challenges Faced
Dataset originally had only one table → created relational tables manually
Date formatting issues (DD/MM/YYYY)
Missing leading zeros in dates
Learned how to split data for join practice
🖼️ Sample Output
<img src="https://github.com/user-attachments/assets/a568eb7e-d735-48c9-b1a8-7548bf502b42" width="500" alt="SQL Output"/>
🚀 How to Run
Clone this repository
Open .sql file in SQLite / DB Browser
Import CSV dataset
Create tables
Run queries
📌 Project Outcome

This project helped strengthen practical SQL skills commonly asked in interviews and data analyst roles:

Aggregations
Joins
Business problem solving
Data cleaning
SQL debugging
