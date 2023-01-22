

select 
    o.orderid,
    o.orderdate,
    o.ORDERDATSHIPDATEE2,
    o.shipmode,
o.ORDERSELLINGPRICE - o.ORDERCOSTPICE as orderprofit,
o.ORDERSELLINGPRICE ,
o.ORDERCOSTPICE ,
o.COSTUMERID,
c.customername,
c.segment,
c.country,
p.productname,
p.subcategory,
p.productid,
p.category
from  {{ ref('raw_order') }} as o 
left join {{ ref('raw_customer') }} as c on o.COSTUMERID = c.customerid
left join {{ ref('raw_product') }} as p on o.productid = p.productid