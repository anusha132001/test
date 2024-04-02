
---this is to add amount should be positive
with payments as
(
    select * from {{ ref('stg_payments') }}
)
--add query 

select
    order_id,
    sum(amount) as total_amount
from payments
group by 1
having total_amount<0

