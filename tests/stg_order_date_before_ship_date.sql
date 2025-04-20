SELECT order_id, 
    shipped_date,
    order_date,
       FROM {{ref("stg_00_local_bike__orders2")}}
group by 1, 2,3
having shipped_date <= order_date