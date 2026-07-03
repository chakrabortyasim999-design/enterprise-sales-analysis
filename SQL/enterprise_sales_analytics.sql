INSERT INTO sales_orders (
    order_id,
    order_date,
    ship_date,
    ship_mode,
    customer_name,
    segment,
    state,
    country,
    market,
    region,
    product_id,
    category,
    sub_category,
    product_name,
    sales,
    quantity,
    discount,
    profit,
    shipping_cost,
    order_priority,
    year
)

SELECT
    order_id,

    TO_DATE(order_date, 'DD-MM-YYYY'),

    TO_DATE(ship_date, 'DD-MM-YYYY'),

    ship_mode,
    customer_name,
    segment,
    state,
    country,
    market,
    region,
    product_id,
    category,
    sub_category,
    product_name,

    REPLACE(sales, ',', '')::NUMERIC(10,2),

    quantity::INTEGER,

    REPLACE(discount, ',', '')::NUMERIC(5,2),

    REPLACE(profit, ',', '')::NUMERIC(10,2),

    REPLACE(shipping_cost, ',', '')::NUMERIC(10,2),

    order_priority,

    year::INTEGER

FROM sales_raw;


INSERT INTO sales_orders 


SELECT

FROM sales_raw;


SELECT COUNT(*) FROM sales_orders;

SELECT * FROM sales_orders LIMIT 10;

SELECT 
COUNT (*) FILTER (WHERE sales IS NULL) AS missing_sales,
COUNT(*) FILTER (WHERE PROFIT IS NULL) AS missing_profit,
COUNT(*) FILTER (WHERE customer_name IS NULL) AS missing_customer
FROM sales_orders;


SELECT order_id, COUNT(*)
FROM sales_orders
GROUP BY order_id
HAVING COUNT(*) > 1;


SELECT *
FROM sales_orders
WHERE profit < 0;

SELECT *
FROM sales_orders
WHERE discount > 0.5;

UPDATE sales_orders
SET category = TRIM(category);

SELECT
product_name,
ROUND(SUM(profit),2) AS total_profit
FROm sales_orders
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 10;

SELECT 
EXTRACT (MONTH FROM order_date) AS month,
ROUND(SUM(sales),2) AS revenue
FROM sales_orders
GROUP BY month
ORDER BY month;

Loss- making categoris

SELECT 
category, 
ROUND(SUM(profit),2) AS total_loss
FROM sales_orders
GROUP BY category
HAVING SUM(profit) < 0;


SELECT 
region,
ROUND(AVG(discount),2) AS avg_discount
FROM sales_orders
GROUP BY region
ORDER BY avg_discount DESC;


SELECT
category,
ROUND((SUM(profit) / SUM(sales)) * 100,2) AS profit_margin
FROM sales_orders
GROUP BY category;


Impact on shipping cost-

SELECT 
ship_mode,
ROUND(AVG(shipping_cost),2) AS avg_shipping,
ROUND(SUm(profit),2) AS total_profit
FROM sales_orders
GROUP BY ship_mode;


HIGH valued customers

SELECT 
customer_name,
ROUND(SUM(sales),2) AS liftime_value
FROM sales_orders
GROUP BY customer_name
ORDER BY liftime_value DESC
LIMIT 10;


Risk analyasis

SELECT
region,
ROUND(SUM(sales),2) AS revenue,
ROUND(SUM(profit),2) AS profit,
ROUND(AVG(discount),2) AS avg_dicount
FROM sales_orders
GROUP BY region
ORDER BY profit ASC;








