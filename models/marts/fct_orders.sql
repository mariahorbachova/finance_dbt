{{ config(materialized='table') }}

SELECT
    o.order_id,
    o.customer_id,
    o.order_date,
    o.status,
    p.payment_method,
    p.amount

FROM {{ ref('stg_orders') }} AS o

LEFT JOIN {{ ref('stg_payments') }} AS p
    ON o.order_id = p.order_id