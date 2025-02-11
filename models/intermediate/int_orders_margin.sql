SELECT 
s.orders_id,
s.date_date,
ROUND(SUM(s.revenue)) AS revenue_per_order,
SUM(s.quantity) AS quanitity_per_order,
ROUND(SUM(s.quantity * p.purchase_price),2) AS purchase_cost,
ROUND(SUM(s.revenue) - SUM(s.quantity * p.purchase_price),2) AS margin
FROM {{ref ("stg_raw__sales")}} s
FULL JOIN {{ref ("stg_raw__product")}} p
on s.products_id = p.products_id
GROUP BY s.orders_id, s.date_date


