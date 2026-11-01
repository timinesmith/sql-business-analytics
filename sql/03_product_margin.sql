-- Business question: Which products generate the strongest margin dollars and margin percentage?
-- Illustrative demonstration using synthetic_orders.
SELECT
    product_name,
    SUM(units) AS units_sold,
    SUM(units * unit_price) AS revenue,
    SUM(units * unit_cost) AS cost,
    SUM(units * (unit_price - unit_cost)) AS gross_margin,
    ROUND(
        100.0 * SUM(units * (unit_price - unit_cost))
        / NULLIF(SUM(units * unit_price), 0),
        2
    ) AS gross_margin_percent
FROM synthetic_orders
WHERE order_status = 'Completed'
GROUP BY product_name
ORDER BY gross_margin DESC;
