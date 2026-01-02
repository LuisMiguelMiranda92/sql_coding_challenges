/*
Calculate the net change in the number of products launched by companies in 2020 compared to 2019. 
Your output should include the company names and the net difference.
(Net difference = Number of products launched in 2020 - The number launched in 2019.)
*/
select company_name,
        SUM(CASE WHEN year = 2020 THEN 1 ELSE 0 END) - 
        SUM(CASE WHEN year = 2019 THEN 1 ELSE 0 END) AS net_difference
from car_launches
group by company_name
order by net_difference DESC