select brand_id,
    brand_name
from {{source("00_local_bike","brands")}}
