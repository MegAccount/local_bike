select staff_id, 
    first_name as staff_first_name, 
    last_name as staff_last_name, 
    -- pas pris email, phone, active, manager id
    store_id
from{{source("00_local_bike",'staffs')}}


