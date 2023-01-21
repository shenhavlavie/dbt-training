
{{
    config(
        materialized='table'
    )
}}

select * 
from "TRAIN_RAW"."TRAIN_GLOBALMART"."ORDER"