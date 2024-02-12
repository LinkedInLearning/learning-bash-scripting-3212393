select *
from employees
where date_key between '2024-01-01' and '2024-01-31'
where transaction_date_key between '2024-01-01' and '2024-01-31'
where cast(date_add(cast(n.reporting_date_key as date), -1) as varchar(15)) between '2024-01-01' and '2024-01-31'