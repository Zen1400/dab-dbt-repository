with 

source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (

    select date_date,
            orders_id,
            pdt_id as products_id,
            revenue,
            quantity, 
            Concat(orders_id, '-', products_id) AS pk

    from source

)

select * from renamed
