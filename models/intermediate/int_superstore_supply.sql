with superstore_data as (
    select * from {{ ref('stg_superstore_data') }}
),

superstore_orders as (
    select * from {{ ref('stg_superstore_orders_return')}}
)

select 
s.*
, d.returned
from superstore_data as s
left join superstore_orders as d
on s.Order_Id = d.order_id

