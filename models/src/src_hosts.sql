with raw_hosts as (
  select * from {{ source('sandbox_product_engineering', 'hosts') }}
)

SELECT
  id as host_id,
  name as host_name,
  is_superhost,
  created_at,
  updated_at
FROM
    raw_hosts