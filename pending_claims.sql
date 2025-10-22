/*
Count how many claims submitted in December 2021 are still pending. 
A claim is pending when it has neither an acceptance nor rejection date.
*/

select COUNT(*) 
from cvs_claims
where date_submitted >= '2021-12-01'
        AND date_submitted < '2022-01-01'
        AND date_accepted IS NULL
        AND date_rejected IS NULL