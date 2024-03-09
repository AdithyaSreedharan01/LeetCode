# Write your MySQL query statement below
select s.user_id, round(avg(CASE WHEN c.action='confirmed' THEN 1 ELSE 0 END ),2) as confirmation_rate
from signups s 
left join Confirmations c 
on s.user_id= c.user_id group by user_id;