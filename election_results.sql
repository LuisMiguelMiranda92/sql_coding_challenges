/*
The election is conducted in a city and everyone can vote for one or more candidates, or choose not to vote at all. 
Each person has 1 vote so if they vote for multiple candidates, their vote gets equally split across these candidates. 
For example, if a person votes for 2 candidates, these candidates receive an equivalent of 0.5 vote each. 
Some voters have chosen not to vote, which explains the blank entries in the dataset.

Find out who got the most votes and won the election. Output the name of the candidate or multiple names in case of a tie.
To avoid issues with a floating-point error you can round the number of votes received by a candidate to 3 decimal places.
*/
WITH VoteWeights AS (
    SELECT 
        voter,
        candidate,
        -- Count valid choices per voter
        COUNT(*) OVER (PARTITION BY voter) as total_choices
    FROM voting_results
    WHERE candidate IS NOT NULL 
),
RankedCandidates AS (
    SELECT 
        candidate,
        -- We don't strictly need to select the sum, but we need to Rank by the rounded sum
        RANK() OVER(ORDER BY ROUND(SUM(1.0 / total_choices), 3) DESC) as rnk
    FROM VoteWeights
    GROUP BY candidate
)
SELECT candidate
FROM RankedCandidates
WHERE rnk = 1;
