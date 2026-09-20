WITH category_sales AS (
    SELECT
        category_name,
        SUM(revenue) AS revenue,
        SUM(gross_profit) AS gross_profit,
        SUM(order_quantity) AS units_sold,
        COUNT(DISTINCT order_number) AS orders
    FROM sales
    GROUP BY category_name
)

SELECT
    category_name,
    ROUND(revenue, 2) AS revenue,
    ROUND(gross_profit, 2) AS gross_profit,
    units_sold,
    orders,
    ROUND(
        gross_profit / revenue * 100,
        2
    ) AS profit_margin_pct
FROM category_sales
ORDER BY revenue DESC;