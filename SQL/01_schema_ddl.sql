


-- Create Staging/Raw Layer
CREATE TABLE IF NOT EXISTS sales_raw (
    order_id VARCHAR(50),
    order_date VARCHAR(20),
    ship_date VARCHAR(20),
    ship_mode VARCHAR(50),
    customer_name VARCHAR(100),
    segment VARCHAR(50),
    state VARCHAR(100),
    country VARCHAR(100),
    market VARCHAR(50),
    region VARCHAR(50),
    product_id VARCHAR(50),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_name VARCHAR(255),
    sales VARCHAR(50),
    quantity VARCHAR(50),
    discount VARCHAR(50),
    profit VARCHAR(50),
    shipping_cost VARCHAR(50),
    order_priority VARCHAR(50),
    year VARCHAR(10)
);

-- Create Production Analytics Layer
CREATE TABLE IF NOT EXISTS sales_orders (
    order_id VARCHAR(50),
    order_date DATE,
    ship_date DATE,
    ship_mode VARCHAR(50),
    customer_name VARCHAR(100),
    segment VARCHAR(50),
    state VARCHAR(100),
    country VARCHAR(100),
    market VARCHAR(50),
    region VARCHAR(50),
    product_id VARCHAR(50),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_name VARCHAR(255),
    sales NUMERIC(10,2),
    quantity INTEGER,
    discount NUMERIC(5,2),
    profit NUMERIC(10,2),
    shipping_cost NUMERIC(10,2),
    order_priority VARCHAR(50),
    year INTEGER
);

-- ETL Pipeline Transformation and Data Loading Step
INSERT INTO sales_orders (
    order_id, order_date, ship_date, ship_mode, customer_name, segment,
    state, country, market, region, product_id, category, sub_category,
    product_name, sales, quantity, discount, profit, shipping_cost, order_priority, year
)
SELECT
    order_id,
    TO_DATE(order_date, 'DD-MM-YYYY'),
    TO_DATE(ship_date, 'DD-MM-YYYY'),
    ship_mode,
    TRIM(customer_name),
    segment,
    state,
    country,
    market,
    region,
    product_id,
    TRIM(category),
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














