-- TABLE 1 : orders
CREATE TABLE orders AS
SELECT DISTINCT
    Order_ID,
    Order_Date,
    Ship_Date,
    Ship_Mode,
    Customer_ID,
    Product_ID,
    Sales
FROM superstore;

-- Table 2: customers
CREATE TABLE customers AS
SELECT DISTINCT
    Customer_ID,
    Customer_Name,
    Segment,
    City,
    State,
    Region
FROM superstore;

-- Table 3: products
CREATE TABLE products AS
SELECT DISTINCT
    Product_ID,
    Product_Name,
    Category,
    Sub_Category
FROM superstore;

-- Q1: Basic 3 table JOIN
SELECT o.Order_ID, c.Customer_Name, p.Product_Name, o.Sales
FROM orders o
JOIN customers c
ON o.Customer_ID = c.Customer_ID
JOIN products p
ON o.Product_ID = p.Product_ID

-- Q2: Total sales for each customer along with their name
SELECT c.Customer_Name,
sum(o.sales) as total_sales
FROM orders o
LEFT JOIN customers c
ON o.Customer_ID = c.Customer_ID
GROUP BY c.Customer_Name

-- Q3: Total sales for each product category
SELECT p.Category,
sum(o.sales) as total_sales
FROM orders o
LEFT JOIN products p
ON o.Product_ID = p.Product_ID
GROUP BY p.Category

-- Q4: Which customers bought from which product categories
SELECT DISTINCT c.Customer_Name, p.Category
FROM orders o
JOIN customers c
ON o.Customer_ID = c.Customer_ID
JOIN products p
ON o.Product_ID = p.Product_ID

-- Q5: Which customers had zero orders
SELECT c.Customer_Name
FROM customers c
LEFT JOIN orders o
ON o.Customer_ID = c.Customer_ID
Where o.Order_ID IS NULL
GROUP BY c.Customer_Name
