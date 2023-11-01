with 

source as (

    select  *   from {{ source('raw', 'sales') }}

),

renamed as (

    select  date_date,
        orders_id,
        pdt_id as products_id,
        revenue,
        quantity


    from source

)

select *, concat(orders_id, '-', products_id) as pk from renamed
