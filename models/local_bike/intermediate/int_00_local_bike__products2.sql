with product as(
    select product_id,
        product_name, 
        brand_id, 
        unit_price, 
        category_id
    from {{ref("stg_00_local_bike__products2")}}
),
brand as (
    select brand_id,
        brand_name
    from {{ref("stg_00_local_bike__brands2")}}
),
category as (
    select category_id,
        category_name
    from {{ref("stg_00_local_bike__categories2")}}
)

select b.brand_id, 
    b.brand_name,
    c.category_id,
    c.category_name, 
    p.product_id,
    p.product_name,
    p.unit_price

from product as p
left join brand as b
on p.brand_id = b.brand_id
left join category as c
on p.category_id = c.category_id
group by b.brand_id, 
    b.brand_name,
    c.category_id,
    c.category_name, 
    p.product_id,
    p.product_name,
    p.unit_price
