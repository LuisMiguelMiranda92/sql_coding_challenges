/*
Find the number of employees working in the Admin department that joined in April or later, in any year.
*/
select COUNT(*) AS num_admin
from worker
where department = 'Admin'
    AND EXTRACT(MONTH from joining_date) >= 4