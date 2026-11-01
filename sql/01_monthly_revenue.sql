-- Business question: How do completed-order revenue, order count, and units trend by month?
-- Illustrative demonstration using synthetic_orders.
SELECT
    DATE_TRUNC('month', order_date) AS sales_month,
    COUNT(DISTINCT order_id) AS completed_orders,
    SUM(units) AS units_sold,
    SUM(units * unit_price) AS revenue,
    SUM(units * (unit_price - unit_cost)) AS gross_margin
FROM synthetic_orders
WHERE order_status = 'Completed'
GROUP BY DATE_TRUNC('month', order_date)
ORDER BY sales_month;
