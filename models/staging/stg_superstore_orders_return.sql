select *
from {{ source("dbt_goncalojardim", "superstore-orders") }}
where returned is true
