select
ord.O_ORDERKEY as order_key,
ord.O_CUSTKEY as cust_key,
ord.O_TOTALPRICE as total_price,
ord.O_ORDERSTATUS as order_status
cust.C_CUSTKEY as cust_key,
cust.C_NAME as cust_name,
cust.C_PHONE as cust_phone
from MY_DB.PUBLIC.ORDERS ord
inner join MY_DB.PUBLIC.CUSTOMER cust
on ord.cust_key=cust.cust_key
