select category_id,
    category_name
from {{ source("00_local_bike", "categories") }}
