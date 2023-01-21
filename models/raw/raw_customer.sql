
{{
    config(
        materialized='table'
    )
}}

select * 
from {{ source('shen', 'CUSTOMER') }}