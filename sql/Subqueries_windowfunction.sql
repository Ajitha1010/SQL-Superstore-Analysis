-- Q1: 7 day rolling sales average per Region

WITH daily_sales AS (
    SELECT Order_Date,
           Region,
           SUM(Sales) AS daily_sales
    FROM superstore
    GROUP BY Order_Date, Region
),

rolling_avg AS (
    SELECT Order_Date,
           Region,
           daily_sales,
           AVG(daily_sales) OVER (
               PARTITION BY Region
               ORDER BY Order_Date
               ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
           ) AS rolling_7_day_avg
    FROM daily_sales
)

SELECT Order_Date,
       Region,
       daily_sales,
       ROUND(rolling_7_day_avg,2) AS rolling_7_day_avg
FROM rolling_avg
ORDER BY Region, Order_Date;

--Q2: Month-over-Month Revenue Growth
SELECT 
    month,
    total_sales,
    previous,
    ROUND((total_sales - previous)/previous,2) AS growth
FROM (
    SELECT month,
           total_sales,
           LAG(total_sales) OVER(ORDER BY month) AS previous
    FROM (
        SELECT 
            substr(Order_Date, -4) || '-' || 
            printf('%02d', CAST(substr(Order_Date, 1, instr(Order_Date, '/')-1) AS INTEGER)) AS month,
            SUM(Sales) AS total_sales
        FROM superstore
        GROUP BY month
    ) s
) t;

--Q3: Rank customers by total spend
SELECT Customer_Name, 
total_sales,
dense_rank() over(order by total_sales DESC) as rank
FROM(SElect Customer_Name,
sum(sales) as total_sales
from superstore
group by Customer_Name)s

--Q4:Running Total of Sales Over Time
SELECT 
    clean_date,
    daily_sales,
    SUM(daily_sales) OVER (
        ORDER BY clean_date
    ) AS running_total
FROM (
   SELECT 
        substr(Order_Date, -4) || '-' || 
        printf(
            '%02d',
            CAST(substr(Order_Date, 1, instr(Order_Date, '/') - 1) AS INTEGER)
        ) || '-' ||
        printf(
            '%02d',
            CAST(
                substr(
                    Order_Date,
                    instr(Order_Date, '/') + 1,
                    instr(
                        substr(Order_Date, instr(Order_Date, '/') + 1),
                        '/'
                    ) - 1
                ) AS INTEGER
            )
        ) AS clean_date,
        
        SUM(Sales) AS daily_sales
    FROM superstore
    GROUP BY clean_date
) t
ORDER BY clean_date;

SELECT Customer_Name,
       SUM(Sales) AS total_sales
FROM superstore
GROUP BY Customer_Name
ORDER BY total_sales DESC
LIMIT 10;
