with orders as (
select * from {{ ref('raw_order') }}
)
Course Notes 6
select ORDERID,
sum(ORDERSELLINGPRICE) as total_sp
from orders
group by orderid
having total_sp<0