select productid, productname, category, subcategory, 
sum(orderprofit) as profit, CURRENT_TIMESTAMP() as Insert_datetime
from {{ ref('stg_orders') }}
group by productid, productname, category, subcategory