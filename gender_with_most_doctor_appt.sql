/*
Find the gender that has made the most number of doctor appointments.
Output the gender along with the corresponding number of appointments.
*/
select gender,
        COUNT(*) as total_appointments
from medical_appointments
group by gender
order by total_appointments desc
limit 1
