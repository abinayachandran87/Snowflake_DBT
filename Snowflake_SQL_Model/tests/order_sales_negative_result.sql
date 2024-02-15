select order_key from 
{{ref('order_sales')}}
where actual_sales < 0