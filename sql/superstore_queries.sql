-- Q1: Find the total sales for each region
SELECT Region,
	sum(sales) as total_sales
FROM superstore
Group by Region;

-- Q2: Top 5 products with highest total Sales
SELECT Product_Name,
	sum(Sales) as total_sales
FROM superstore
Group by Product_ID,Product_Name
Order by total_sales DESC
LIMIT 5;

-- Q3:Average sale for each category
SELECT Category,
	avg(sales) as avg_sales
FROM superstore
Group by Category;

-- Q4:Total revenue for each month
SELECT 
    substr(Order_Date, -4) || '-' || 
    substr(Order_Date, instr(Order_Date, '/') + 1, 
           instr(substr(Order_Date, instr(Order_Date, '/') + 1), '/') - 1) AS month,
    SUM(Sales) AS total_sales
FROM superstore
GROUP BY month
ORDER BY month;

-- Q5: Number of unique customers in each state
SELECT State,
	count(distinct Customer_ID) as total_customers
FROM superstore
Group by State
Order by State;

-- Q6: Total sales by category and sub-category
SELECT 
    Category,
    Sub_Category,
    SUM(Sales) AS total_sales
FROM superstore
GROUP BY Category, Sub_Category
ORDER BY Category, total_sales DESC;

-- Q7: Top 3 customers who generated highest sales
SELECT Customer_Name,
	sum(Sales) AS total_sales
FROM superstore
GROUP BY Customer_Name
ORDER BY total_sales DESC
LIMIT 3;

-- Q8: Region with highest average sales per order
SELECT Region,
       ROUND(SUM(Sales) * 1.0 / COUNT(DISTINCT Order_ID), 2) AS avg_sales
FROM superstore
GROUP BY Region
ORDER BY avg_sales DESC
LIMIT 1;

-- Q9: Number of orders per year
SELECT 
    substr(Order_Date, -4) AS year,
    COUNT(DISTINCT Order_ID) AS total_orders
FROM superstore
GROUP BY year
ORDER BY year;

-- Q10: Category with highest total sales
SELECT Category,
	sum(Sales) AS total_sales
FROM superstore
GROUP BY Category
ORDER BY total_sales DESC
LIMIT 1;
