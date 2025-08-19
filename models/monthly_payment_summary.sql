select
    date_trunc('month', payment_date) as date_month,
    sum(amount) as total_revenue,
    count(payment_id) as payment_count
from {{ ref('stg_pagila__payment') }}
group by date_trunc('month', payment_date)
order by date_month