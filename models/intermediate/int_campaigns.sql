-- SELECT date_date, paid_source, campaign_key, campaign_name, ads_cost, impression, click
-- FROM {{ ref("stg_raw__adwords") }}

-- UNION ALL

-- SELECT date_date, paid_source, campaign_key, campaign_name, ads_cost, impression, click
-- FROM {{ ref("stg_raw__bing") }}

-- UNION ALL

-- SELECT date_date, paid_source, campaign_key, campaign_name, ads_cost, impression, click
-- FROM {{ ref("stg_raw__criteo") }}

-- UNION ALL

-- SELECT date_date, paid_source, campaign_key, campaign_name, ads_cost, impression, click
-- FROM {{ ref("stg_raw__facebook") }}


{{ dbt_utils.union_relations(
    relations=[
        ref('stg_raw__adwords'),
        ref("stg_raw__bing"),
        ref("stg_raw__criteo"), 
        ref("stg_raw__facebook")
    ],
    exclude=["_loaded_at"]
) }}