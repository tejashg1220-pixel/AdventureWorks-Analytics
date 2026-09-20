WITH customer_orders AS (
    SELECT
        customer_key,
        COUNT(DISTINCT order_number) AS total_orders,
        SUM(revenue) AS revenue,
        SUM(gross_profit) AS gross_profit
    FROM sales
    GROUP BY customer_key
),

customer_segments AS (
    SELECT
        customer_key,
        total_orders,
        revenue,
        gross_profit,
        CASE
            WHEN total_orders = 1 THEN 'One-Time'
            ELSE 'Repeat'
        END AS customer_type
    FROM customer_orders
)

SELECT
    customer_type,
    COUNT(*) AS customers,
    ROUND(SUM(revenue), 2) AS revenue,
    ROUND(SUM(gross_profit), 2) AS gross_profit,
    ROUND(
        SUM(revenue)
        / SUM(SUM(revenue)) OVER () * 100,
        2
    ) AS revenue_share_pct
FROM customer_segments
GROUP BY customer_type
ORDER BY revenue DESC;