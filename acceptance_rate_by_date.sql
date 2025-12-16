/*
Calculate the friend acceptance rate for each date when friend requests were sent. 
A request is sent if action = sent and accepted if action = accepted. 
If a request is not accepted, there is no record of it being accepted in the table.


The output will only include dates where requests were sent and at least one of them was accepted 
(acceptance can occur on any date after the request is sent).
*/
WITH sent_cte AS
  (SELECT date, user_id_sender,
                user_id_receiver
   FROM fb_friend_requests
   WHERE action='sent' ),
     accepted_cte AS
  (SELECT date, user_id_sender,
                user_id_receiver
   FROM fb_friend_requests
   WHERE action='accepted' )
SELECT a.date,
       count(b.user_id_receiver)/CAST(count(a.user_id_sender) AS decimal) AS percentage_acceptance
FROM sent_cte a
LEFT JOIN accepted_cte b ON a.user_id_sender=b.user_id_sender
AND a.user_id_receiver=b.user_id_receiver
GROUP BY a.date