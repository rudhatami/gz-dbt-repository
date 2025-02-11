SELECT 
p.orders_id,
s.date_date,
s.quanitity_per_order,
s.revenue_per_order,
s.purchase_cost,
s.margin,
ROUND(s.margin + p.shipping_fee - p.logcost - p.ship_cost, 2) AS operational_margin
FROM {{ref("int_orders_margin")}} s
JOIN {{ref("stg_raw__ship")}} p
on s.orders_id = p.orders_id

