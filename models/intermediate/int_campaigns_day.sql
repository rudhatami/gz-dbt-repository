
SELECT 
date_date,
SUM(ads_cost) AS ads_cost_per_day,
SUM(impression) AS ads_impression_per_day,
SUM (click) AS ads_clicks_per_day,
FROM {{ ref ("int_campaigns")}}
GROUP BY date_date
ORDER BY date_date desc

