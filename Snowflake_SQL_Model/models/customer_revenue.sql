select 
    ord.order_key,
    ord.line_number,
    ord.quantity,
    ord.price,
    cust.cust_key,
    cust.cust_name,
    ord.quantity * ord.price as revenue
from 
    {{ref('order_facts')}} ord
inner join
    {{ref('customer_stg')}} cust
on 
    ord.cust_key=cust.cust_key