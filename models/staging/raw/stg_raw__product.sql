with 

source as (

    select * from {{ source('raw', 'product') }}

),

renamed as (

    select
        products_id,
        purchse_price

    from source

)

select 
       CAST(purchse_price AS FLOAT64) AS purchase_price
       , products_id
 from renamed