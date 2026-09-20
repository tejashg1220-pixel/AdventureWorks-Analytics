WITH yearly_sales AS (
    SELECT
        year,
        SUM(revenue) AS revenue
    FROM sales
    GROUP BY year
)

SELECT
    year,
    ROUND(revenue, 2) AS revenue,
    ROUND(
        LAG(revenue) OVER (ORDER BY year),
        2
    ) AS previous_year_revenue,
    ROUND(
        (
            revenue
            - LAG(revenue) OVER (ORDER BY year)
        )
        / LAG(revenue) OVER (ORDER BY year) * 100,
        2
    ) AS revenue_growth_pct
FROM yearly_sales
ORDER BY year;