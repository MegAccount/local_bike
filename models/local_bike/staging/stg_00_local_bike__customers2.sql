select customer_id,
    first_name as customer_first_name,
    last_name as customer_last_name,
    phone as customer_phone,
    email as customer_email,
--street, city, state, zip_code inutilisé
from {{ source("00_local_bike", "customers") }}
