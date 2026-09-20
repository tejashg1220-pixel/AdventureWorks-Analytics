WITH product_sales AS (
    SELECT
        product_key,
        product_name,
        SUM(revenue) AS revenue,
        SUM(gross_profit) AS gross_profit
    FROM sales
    GROUP BY
        product_key,
        product_name
)

SELECT
    product_key,
    product_name,
    ROUND(revenue, 2) AS revenue,
    ROUND(gross_profit, 2) AS gross_profit,
    RANK() OVER (
        ORDER BY revenue DESC
    ) AS revenue_rank
FROM product_sales
ORDER BY revenue_rank
LIMIT 10;