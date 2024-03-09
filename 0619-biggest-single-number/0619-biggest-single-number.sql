# Write your MySQL query statement below
select ifnull(max(num),null) as num
from mynumbers 
where num in 
(select  num
from mynumbers
group by num
having count(num)=1)