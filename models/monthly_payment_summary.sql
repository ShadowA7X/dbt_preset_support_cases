select * from {{ metrics.calculate(
    [metric('total_revenue'), metric('payment_count')],
    grain='month'
) }}