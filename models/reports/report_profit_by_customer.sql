select 
COSTUMERID,
segment,
country,
sum(orderprofit) as profit
from {{ ref('stg_order') }}
group by 
COSTUMERID,
segment,
country
