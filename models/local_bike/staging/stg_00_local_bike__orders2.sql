select order_id,
    customer_id,
    order_status,
    order_date,
-- required_date inutile,
    safe_cast(shipped_date as date) as shipped_date,
    store_id,
    staff_id
from {{ source("00_local_bike", "orders") }}
