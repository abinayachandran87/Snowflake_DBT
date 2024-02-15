select ord.order_key,
ord.cust_key,
ord.total_price,
ord.order_status,
ordit.line_number,
ordit.quantity,
ordit.price
from {{ref('order_stg')}} ord
inner join 
{{ref('order_items_stg')}} ordit
on ord.order_key=ordit.order_key
