select store_id,
    store_name
from {{source("00_local_bike",'stores')}}