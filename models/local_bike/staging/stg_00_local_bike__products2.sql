select product_id, 
    product_name, 
    brand_id, 
    category_id,
-- pas model_year inutile
    list_price as unit_price
from {{source('00_local_bike','products')}}