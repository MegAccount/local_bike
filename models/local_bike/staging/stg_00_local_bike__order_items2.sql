select order_id,
    item_id,
    concat(order_id,'-',item_id) as order_uid,
    product_id,
    quantity as item_quantity,
    list_price as unit_price,
    discount
from {{ source("00_local_bike", "order_items") }}
