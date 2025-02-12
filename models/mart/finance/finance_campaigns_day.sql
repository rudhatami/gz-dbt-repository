SELECT 
date_date,
ROUND((operational_margin_per_day - ads_cost_per_day),2) AS ads_margin,
average_basket,
operational_margin_per_day,
ads_cost_per_day,
ads_impression_per_day,
ads_clicks_per_day,
total_quantity_sold_per_day,
revenue_per_day,
purchase_cost_per_day,
margin_per_day,
shipping_fee_per_day,
logcost_per_day,
ROUND((logcost_per_day - shipping_fee_per_day),2) AS ship_cost
FROM {{ ref ("int_campaigns_day")}}
JOIN {{ ref ("finance_days")}}
USING (date_date)
ORDER BY date_date desc
