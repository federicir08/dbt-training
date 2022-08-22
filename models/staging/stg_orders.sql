select 
--from raw orders
o.orderid, o.orderdate, o.shipdate,o.shipmode,
c.customername, c.segment, c.country,
p.productname, p.subcategory,
ordersellingprice - ordercostprice as orderprofit,
o.ordercostprice, o.ordersellingprice
from {{ ref('raw_orders') }} o
left join {{ ref('raw_customers') }} c
on o.customerid = c.customerid
left join {{ ref('raw_products') }} p
on o.productid = p.productid
