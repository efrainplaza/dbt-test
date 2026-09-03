with payments as (

select * from {{ ref('stg_stripe__payments') }}

),

orders as (

select * from {{ ref('stg_jaffle_shop__orders') }}

),


final as (

    select
        orders.order_id,
        orders.customer_id,
        payments.formatted_amount as amount

    from payments

    left join orders on payments.orderid = orders.order_id

)

select * from final
