with raw_reviews as (
  select * from {{ source('sandbox_product_engineering', 'reviews') }}
)

SELECT
  listing_id,
  date AS review_date,
  reviewer_name,
  comments as review_text,
  sentiment as review_sentiment
FROM
    raw_reviews