with order_table as(
    select order_id,
        customer_id,
        order_date,
        shipped_date,
        store_id,
        staff_id
    from {{ref("stg_00_local_bike__orders2")}}
),
staff as (
    select staff_id,
        staff_first_name,
        staff_last_name,
        concat(upper(staff_last_name),' ',staff_first_name) as staff_full_name,
        store_id
    from {{ref("stg_00_local_bike__staffs2")}}
),
store as (
    select store_id,
        store_name
    from {{ref("stg_00_local_bike__stores2")}}
), 

customer as (
    select customer_id,
        customer_first_name, 
        customer_last_name,
        concat(upper(customer_last_name),' ',customer_first_name) as customer_full_name,
        customer_email,
        customer_phone
    from {{ref("stg_00_local_bike__customers2")}}
) 


select o.order_id,
    o.order_date,
    o.shipped_date,
    sf.staff_id,
    sf.staff_full_name,
    st.store_id,
    st.store_name,
    c.customer_id,
    c.customer_full_name,
    c.customer_email,
    c.customer_phone 

from order_table as o
left join staff as sf
on o.staff_id = sf.staff_id
left join store as st
on o.store_id = st.store_id
left join customer as c
on o.customer_id = c.customer_id
group by o.order_id,
    o.order_date,
    o.shipped_date,
    sf.staff_id,
    sf.staff_full_name,
    st.store_id,
    st.store_name,
    c.customer_id,
    c.customer_full_name,
    c.customer_email,
    c.customer_phone 