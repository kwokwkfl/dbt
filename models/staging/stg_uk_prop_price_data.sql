{{ config(materialized='view') }}

select
id,
price,
date(date_of_transfer) as date_of_transfer,
postcode,
property_type,
old_new,
duration, 
PAON, 
SAON,
street,
locality,
town_city
district,
county, 
PPD_category,
record_status
 FROM {{ source('staging', 'pp_1995')}}
-- limit 100 



