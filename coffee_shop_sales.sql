SET GLOBAL local_infile = 1;
CREATE DATABASE coffee_shop;
USE coffee_shop;
CREATE TABLE coffeeshop_sales (
    transaction_id INT,
    transaction_date VARCHAR(20),
    transaction_time VARCHAR(20),
    transaction_qty INT,
    store_id INT,
    store_location VARCHAR(50),
    product_id INT,
    unit_price DOUBLE,
    product_category VARCHAR(50),
    product_type VARCHAR(100),
    product_detail VARCHAR(100),
    Revenue DOUBLE
);
LOAD DATA LOCAL INFILE 'C:/Users/Uzma/OneDrive/Desktop/Data Analytics/end to end projects/Coffee shop sales/coffee-shop-sales-revenue.csv'
INTO TABLE coffeeshop_sales
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

SHOW GLOBAL VARIABLES LIKE 'local_infile';
SELECT VERSION();
SHOW GLOBAL VARIABLES LIKE 'local_infile';
SHOW GLOBAL VARIABLES LIKE 'local_infile';
SHOW TABLES;
DROP TABLE coffee_sales;

SELECT COUNT(*) 
FROM coffeeshop_sales; 
SELECT *
FROM coffeeshop_sales
LIMIT 10;

#total revenue coffee shop generated in total
SELECT SUM(revenue) AS Total_Revenue
FROM coffeeshop_sales;
#total transactions
SELECT COUNT(transaction_id) AS Total_Transactions
FROM coffeeshop_sales;
#store generating highest revenue
SELECT store_location, SUM(revenue) AS total_revenue
FROM coffeeshop_sales
GROUP BY store_location
ORDER BY total_revenue DESC
LIMIT 1;
#product category with highest revenue
SELECT product_category,
       SUM(revenue) AS Highest_Revenue
FROM coffeeshop_sales
GROUP BY product_category
ORDER BY Highest_Revenue DESC
LIMIT 1;
#top 10 selling products by revenue
SELECT product_detail,
       SUM(revenue) AS product_revenue
FROM coffeeshop_sales
GROUP BY product_detail
ORDER BY product_revenue DESC
LIMIT 10;
#hour of the day which generates the highest revenue
SELECT HOUR(transaction_time) AS Hour,
       SUM(revenue) AS Revenue_per_hour
FROM coffeeshop_sales
GROUP BY HOUR(transaction_time)
ORDER BY Revenue_per_hour DESC
LIMIT 1;
#day of the week with highest revenue
SELECT 
    DAYNAME(STR_TO_DATE(transaction_date, '%d-%m-%Y')) AS day_name,
    SUM(revenue) AS daily_revenue
FROM coffeeshop_sales
GROUP BY DAYNAME(STR_TO_DATE (transaction_date, '%d-%m-%Y'))
ORDER BY daily_revenue DESC
LIMIT 1;
#AOV
SELECT SUM(revenue) / COUNT(DISTINCT transaction_id) AS Average_Order_Value
FROM coffeeshop_sales;
#store selling highest quantity of items
select SUM(transaction_qty ) AS total_quantity, store_location
from coffeeshop_Sales
group by store_location
order by SUM(transaction_qty) DESC
limit 1;
# product with the least revenue
SELECT 
    product_detail,
    SUM(revenue) AS total_revenue
FROM coffeeshop_sales
GROUP BY product_detail
ORDER BY total_revenue ASC
LIMIT 1;