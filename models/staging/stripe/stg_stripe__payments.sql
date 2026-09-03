    select
        id as payment_id,
        orderid,
        paymentmethod as payment_method,
        status,
        TO_VARCHAR(amount, '$999,999,999.00') AS formatted_amount,
        created as created_on

    from raw.stripe.payment