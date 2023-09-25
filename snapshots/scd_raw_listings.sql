{% snapshot scd_raw_listings %}

{{
   config(
       target_schema='sandbox_rohail',
       unique_key='id',

       strategy='timestamp',
       updated_at='updated_at',
       invalidate_hard_deletes=True,
   )
}}

select * from {{ source('sandbox_product_engineering', 'listings') }}


{% endsnapshot %}