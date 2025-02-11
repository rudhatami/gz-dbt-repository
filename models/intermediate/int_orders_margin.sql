SELECT 
orders_id,
date_date,
ROUND(SUM(revenue)) AS revenue_per_order,
SUM(quantity) AS quanitity_per_order,
ROUND(SUM(quantity * purchase_price),2) AS purchase_cost,
ROUND(SUM(revenue) - SUM(quantity * purchase_price),2) AS margin
FROM {{ref ("int_sales_margin")}}
GROUP BY orders_id, date_date


