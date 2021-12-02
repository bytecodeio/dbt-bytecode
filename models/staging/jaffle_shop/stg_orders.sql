with orders as (

    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from "TRAINING_DB_EUGENE"."JAFFLE_SHOP"."orders"

)

SELECT * FROM orders