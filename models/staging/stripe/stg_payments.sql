select 
id as payment_id,
orderid as order_id ,
paymentmethod as payment_method,
amount/100 as amounts
from raw.stripe.payment

