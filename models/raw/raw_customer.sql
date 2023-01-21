
{{
    config(
        materialized='table'
    )
}}

select * 
from {{ source('TRAIN_GLOBALMART', 'CUSTOMER') }}