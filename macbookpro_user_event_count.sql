/*
Count the number of user events performed by MacBookPro users.
Output the result along with the event name.
Sort the result based on the event count in the descending order.
*/
select count(*),
        event_name
from playbook_events
where device='macbook pro'
group by 2
order by 1 desc