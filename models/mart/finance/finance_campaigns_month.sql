SELECT 
DATE_TRUNC(date_date, MONTH) AS datemonth,
ROUND(SUM(ads_margin),2) AS ads_margin_per_month,
ROUND(SUM(average_basket),2) AS average_basket_per_month,
ROUND(SUM(operational_margin_per_day),2) AS operational_margin_per_month,
ROUND(SUM(ads_cost_per_day),2) AS ads_cost_per_month,
ROUND(SUM(ads_impression_per_day),2) AS ads_impression_per_month,
ROUND(SUM(ads_clicks_per_day),2) AS ads_clicks_per_month,
ROUND(SUM(total_quantity_sold_per_day),2) AS total_quantity_sold_per_month,
ROUND(SUM(revenue_per_day),2) AS revenue_per_month,
ROUND(SUM(purchase_cost_per_day),2) AS purchase_cost_per_month,
ROUND(SUM(margin_per_day),2) AS margin_per_month,
ROUND(SUM(shipping_fee_per_day),2) AS shipping_fee_per_month,
ROUND(SUM(logcost_per_day),2) AS logcost_per_month,
ROUND(SUM(ship_cost),2) AS ship_cost_per_month
FROM {{ ref ("finance_campaigns_day") }}
GROUP BY datemonth
