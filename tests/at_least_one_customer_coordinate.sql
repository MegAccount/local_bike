SELECT customer_id,
      customer_email,
      customer_phone
       FROM {{ref("stg_00_local_bike__customers2")}}
group by 1, 2, 3
having customer_email is null
  and customer_phone is null