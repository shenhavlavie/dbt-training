select 
productid,
productname,
category,
subcategory,
sum(orderprofit) as profit
from {{ ref('stg_order') }}
group by 
productid,
productname,
category,
subcategory