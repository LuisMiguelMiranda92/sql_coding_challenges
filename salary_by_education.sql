/*
Given the education levels and salaries of a group of individuals, find what is the average salary for each level of education.
*/
select education,
        avg(salary) as avg_salary
from google_salaries
group by 1
order by 2
