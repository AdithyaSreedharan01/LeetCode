# Write your MySQL query statement below
select x.machine_id,round(avg(y.timestamp-x.timestamp),3) as processing_time
from Activity x
join Activity y 
on x.machine_id=y.machine_id and x.process_id=y.process_id and
y.activity_type='end' and x.activity_type='start'
group by x.machine_id;