-- Business question: Which customers return, and what share of customers are repeat buyers?
-- Illustrative demonstration using synthetic_orders.
WITH customer_orders AS (
    SELECT
        customer_id,
        COUNT(DISTINCT order_id) AS completed_orders,
        SUM(units * unit_price) AS lifetime_revenue
    FROM synthetic_orders
    WHERE order_status = 'Completed'
    GROUP BY customer_id
)
SELECT
    customer_id,
    completed_orders,
    lifetime_revenue,
    CASE WHEN completed_orders >= 2 THEN 'Repeat' ELSE 'One-time' END AS customer_type
FROM customer_orders
ORDER BY lifetime_revenue DESC;
