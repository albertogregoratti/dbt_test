{{ config(materialized='table') }}

WITH orders as (
    SELECT * FROM {{ source('my_wsorders', 'wsorders2') }}
),
final as ( select * from orders)

SELECT * FROM final