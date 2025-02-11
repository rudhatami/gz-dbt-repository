-- SELECT quantity, revenue
-- FROM {{ref ("stg_raw__product")}} p 
-- FULL JOIN {{ref ("stg_raw__sales")}} s
-- on p.products_id = s.products_id

SELECT 
ROUND((quantity * purchase_price),2) AS purchase_cost,
ROUND((revenue - (quantity * purchase_price)),2) AS margin
FROM {{ref ("stg_raw__sales")}} s
FULL JOIN {{ref ("stg_raw__product")}} p
on s.products_id = p.products_id

-- WITH sub AS (
-- SELECT 
-- quantity,
-- revenue,
-- purchase_price
-- FROM {{ref ("stg_raw__sales")}} s
-- FULL JOIN {{ref ("stg_raw__product")}} p
-- on s.products_id = p.products_id
-- )

-- SELECT 
-- ROUND((quantity * purchase_price),2) AS purchase_cost,
-- ROUND((revenue - (quantity * purchase_price)),2) AS margin
-- FROM sub


SELECT 
ROUND((quantity * purchase_price),2) AS purchase_cost,
ROUND((revenue - (quantity * purchase_price)),2) AS margin
FROM {{ref ("stg_raw__sales")}} s
FULL JOIN {{ref ("stg_raw__product")}} p
on s.products_id = p.products_id