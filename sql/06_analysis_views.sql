-- Sales Analysis View

CREATE OR REPLACE VIEW vw_sales_analysis AS
SELECT
    order_date,
    year,
    order_number,
    product_key,
    product_name,
    product_subcategory_key,
    subcategory_name,
    product_category_key,
    category_name,
    customer_key,
    territory_key,
    order_line_item,
    order_quantity,
    product_cost,
    product_price,
    revenue,
    cost,
    gross_profit,
    ROUND(
        gross_profit / NULLIF(revenue, 0) * 100,
        2
    ) AS profit_margin_pct
FROM sales;


-- Customer Analysis View

CREATE OR REPLACE VIEW vw_customer_analysis AS
WITH customer_summary AS (
    SELECT
        customer_key,
        COUNT(DISTINCT order_number) AS total_orders,
        SUM(order_quantity) AS units_sold,
        SUM(revenue) AS revenue,
        SUM(gross_profit) AS gross_profit
    FROM sales
    GROUP BY customer_key
)

SELECT
    customer_key,
    total_orders,
    units_sold,
    ROUND(revenue, 2) AS revenue,
    ROUND(gross_profit, 2) AS gross_profit,
    ROUND(
        gross_profit / NULLIF(revenue, 0) * 100,
        2
    ) AS profit_margin_pct,
    CASE
        WHEN total_orders = 1 THEN 'One-Time'
        ELSE 'Repeat'
    END AS customer_type
FROM customer_summary;