SELECT
    year,
    SUM(revenue) AS total_revenue,
    SUM(gross_profit) AS gross_profit,
    COUNT(DISTINCT order_number) AS total_orders,
    SUM(order_quantity) AS units_sold,
    ROUND(
        SUM(gross_profit) / SUM(revenue) * 100,
        2
    ) AS profit_margin_pct
FROM sales
GROUP BY year
ORDER BY year;