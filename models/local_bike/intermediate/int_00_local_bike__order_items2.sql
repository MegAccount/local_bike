select order_id,
    item_id,
    product_id,
    item_quantity,
    unit_price,
    discount, 
    sum(item_quantity*(unit_price*(1-discount))) as sold_amount
from {{ ref("stg_00_local_bike__order_items2") }}
group by order_id,
    item_id,
    product_id,
    item_quantity,
    unit_price,
    discount