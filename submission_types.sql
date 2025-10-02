/*
Write a query that returns the user ID of all users that have created at least one ‘Refinance’ submission 
and at least one ‘InSchool’ submission.
*/

select user_id 
from loans
WHERE type IN ('Refinance', 'InSchool')
GROUP BY user_id
HAVING COUNT(DISTINCT type) = 2