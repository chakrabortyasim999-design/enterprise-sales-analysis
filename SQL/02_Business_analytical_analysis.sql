-- 1. Data Integrity and Quality Audit Check
SELECT 
    COUNT(*) FILTER (WHERE sales IS NULL) AS missing_sales,
    COUNT(*) FILTER (WHERE profit IS NULL) AS missing_profit,
    COUNT(*) FILTER (WHERE customer_name IS NULL) AS missing_customer
FROM sales_orders;

-- 2. Product Performance: Top 10 Most Profitable Products
SELECT
    product_name,
    ROUND(SUM(profit), 2) AS total_profit
FROM sales_orders
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 10;

-- 3. Temporal Revenue Trends (Monthly Aggregate)
SELECT 
    EXTRACT(MONTH FROM order_date) AS month,
    ROUND(SUM(sales), 2) AS revenue
FROM sales_orders
GROUP BY month
ORDER BY month;

-- 4. Profit Margin Analysis by Product Category
SELECT
    category,
    ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS profit_margin_percentage
FROM sales_orders
GROUP BY category;

-- 5. Operational Logistics: Fulfillment Performance Matrix
SELECT 
    ship_mode,
    ROUND(AVG(shipping_cost), 2) AS avg_shipping_cost,
    ROUND(SUM(profit), 2) AS total_net_profit
FROM sales_orders
GROUP BY ship_mode;

-- 6. Customer Valuation Metrics: Top 10 High-Value VIP Clients
SELECT 
    customer_name,
    ROUND(SUM(sales), 2) AS lifetime_value
FROM sales_orders
GROUP BY customer_name
ORDER BY lifetime_value DESC
LIMIT 10;

-- 7. Macro Risk Evaluation Matrix by Regional Distribution
SELECT
    region,
    ROUND(SUM(sales), 2) AS total_revenue,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(AVG(discount), 2) AS avg_discount_applied
FROM sales_orders
GROUP BY region
ORDER BY total_profit ASC;
