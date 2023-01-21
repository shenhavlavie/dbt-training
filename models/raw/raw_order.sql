
{{
    config(
        materialized='table'
    )
}}

select * 
from {{ source('shen', 'ORDERS') }}