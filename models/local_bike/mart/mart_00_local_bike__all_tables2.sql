{{config(materialized ='table')}}

with order_table as(
    select order_id,
    order_date,
    shipped_date,
    staff_id,
    staff_full_name,
    store_id,
    store_name,
    customer_id,
    customer_full_name,
    customer_email,
    customer_phone 
    from {{ref("int_00_local_bike__order_store_custo2")}}
),
product as (
    select brand_id, 
    brand_name,
    category_id,
    category_name, 
    product_id,
    product_name,
    unit_price
    from {{ref("int_00_local_bike__products2")}}
),
order_item as (
    select order_id,
    item_id,
    product_id,
    item_quantity,
    unit_price,
    discount, 
    sold_amount
    from {{ref("int_00_local_bike__order_items2")}}
)

select o.order_id,
    o.order_date,
    o.shipped_date,
    o.staff_full_name,
    o.store_name,
    o.customer_id,
    o.customer_full_name, 
    p.brand_name,
    p.category_id,
    p.category_name, 
    p.product_id,
    p.product_name,
    oi.item_id,
    oi.item_quantity,
    oi.unit_price,
    oi.discount, 
    oi.sold_amount


from order_table as o
left join  order_item as oi
on o.order_id = oi.order_id
left join product as p
on oi.product_id = p.product_id

group by o.order_id,
    o.order_date,
    o.shipped_date,
    o.staff_full_name,
    o.store_name,
    o.customer_id,
    o.customer_full_name, 
    p.brand_name,
    p.category_id,
    p.category_name, 
    p.product_id,
    p.product_name,
    oi.item_id,
    oi.item_quantity,
    oi.unit_price,
    oi.discount, 
    oi.sold_amount