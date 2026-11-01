-- Illustrative demonstration: schema for the synthetic orders dataset.
CREATE TABLE synthetic_orders (
    order_id INTEGER PRIMARY KEY,
    order_date DATE NOT NULL,
    customer_id VARCHAR(20) NOT NULL,
    channel VARCHAR(30) NOT NULL,
    product_category VARCHAR(50) NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    units INTEGER NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL,
    unit_cost DECIMAL(10,2) NOT NULL,
    order_status VARCHAR(20) NOT NULL
);
