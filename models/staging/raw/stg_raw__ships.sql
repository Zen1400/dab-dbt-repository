with 

source as (

    select * from {{ source('raw', 'ships') }}

),

renamed as (

    select
        orders_id,
        shipping_fee,
        logcost,
        ship_cost

    from source
    where shipping_fee <> shipping_fee_1

)

select * from renamed
