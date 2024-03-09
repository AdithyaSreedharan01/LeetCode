# Write your MySQL query statement below
select substr(trans_date,1,7) as month,country,count(amount) as trans_count,sum(CASE WHEN STATE='approved'THEN 1 ELSE 0 END) as approved_count, sum(amount) as trans_total_amount,
sum(CASE WHEN STATE='approved'THEN amount ELSE 0 END) as  approved_total_amount
from transactions 
group by month,country;
