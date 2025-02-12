
{{ config(materialzed='table')}}

SELECT 
date_date,
COUNT(orders_id) AS nb_transactions,
ROUND(SUM(revenue_per_order),2) AS revenue_per_day,
ROUND(AVG(revenue_per_order),2) AS average_basket,
ROUND(SUM(margin),2) AS margin_per_day,
ROUND(SUM(operational_margin),2) AS operational_margin_per_day,
ROUND(SUM(purchase_cost),2) AS purchase_cost_per_day,
ROUND(SUM(quanitity_per_order),2) AS total_quantity_sold_per_day,
ROUND(SUM(shipping_fee),2) AS shipping_fee_per_day,
ROUND(SUM(logcost),2) AS logcost_per_day,
FROM {{ref ("int_orders_operational")}}
JOIN {{ref( "stg_raw__ship")}}
USING (orders_id)
GROUP BY date_date
ORDER BY date_date desc
