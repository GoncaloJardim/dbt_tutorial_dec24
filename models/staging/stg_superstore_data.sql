select * from {{ source("dbt_goncalojardim", "superstore-table") }} order by order_id
