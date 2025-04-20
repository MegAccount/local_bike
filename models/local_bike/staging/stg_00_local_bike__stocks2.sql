select store_id,
    product_id,
    concat(product_id,'-',store_id) as stock_uid,
    quantity as stock_quantity
from {{source("00_local_bike",'stocks')}}