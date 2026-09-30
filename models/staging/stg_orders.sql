{{ config(materialized='view') }}

SELECT
    id AS order_id,
    user_id AS customer_id,
    CAST(order_date AS TIMESTAMP) AS order_date,
    status
FROM {{ ref('raw_orders') }}