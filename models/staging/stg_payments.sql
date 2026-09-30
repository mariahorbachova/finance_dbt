{{ config(materialized='view') }}

SELECT
    id AS payment_id,
    order_id,
    payment_method,

    {{ cents_to_dollars('amount_cents') }} AS amount

FROM {{ ref('raw_payments') }}