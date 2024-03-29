with orders as(
    select * from {{ ref('stg_orders') }}
),
customers as(
    select * from {{ ref('stg_customers') }}
),
payments as(
    select * from {{ ref('stg_payments') }}
),
results as(
    select customers.customer_id,
    orders.order_id,
    payments.payment_id
    from customers
    inner join orders on customers.customer_id = orders.customer_id
    inner join payment on payment.order_id= orders.order_id
)

select * from results