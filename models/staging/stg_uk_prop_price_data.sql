{{ config(materialized='view') }}

select * FROM {{ source('staging','pp_1995') }}
limit 100 

