select 
Order_id as order_id
, Returned as returned
from {{ source("dbt_goncalojardim", "superstore-orders") }}
where returned is true
