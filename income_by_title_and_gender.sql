/*
Find the average total compensation based on employee titles and gender. 
Total compensation is calculated by adding both the salary and bonus of each employee. 
However, not every employee receives a bonus so disregard employees without bonuses in your calculation. 
Employee can receive more than one bonus.
Output the employee title, gender (i.e., sex), along with the average total compensation.
*/
select e.employee_title,
        e.sex,
        AVG(e.salary + b.total_bonus) as average_total_compensation
from sf_employee e
join (select worker_ref_id,
        sum(bonus) as total_bonus
        from sf_bonus
        group by worker_ref_id) b 
on e.id = b.worker_ref_id
group by e.employee_title, e.sex
