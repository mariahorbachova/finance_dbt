{{ config(materialized='view') }}

SELECT
    id AS customer_id,
    first_name,
    last_name,
    email,
    CAST(signup_date AS DATE) AS signup_date
FROM {{ ref('raw_customers') }}