-- Business question: Which products are selling steadily and may need replenishment review?
-- This demonstration uses recent completed-order velocity as a simple reorder signal.
-- Illustrative demonstration using synthetic_orders.
SELECT
    product_name,
    SUM(units) AS units_last_90_days,
    COUNT(DISTINCT order_id) AS completed_orders,
    CASE
        WHEN SUM(units) >= 200 THEN 'Review now - high velocity'
        WHEN SUM(units) >= 50 THEN 'Monitor - moderate velocity'
        ELSE 'No immediate signal'
    END AS reorder_signal
FROM synthetic_orders
WHERE order_status = 'Completed'
  AND order_date >= DATE '2026-02-01'
GROUP BY product_name
ORDER BY units_last_90_days DESC;
