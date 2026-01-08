/*
Meta/Facebook sends SMS texts when users attempt 2FA (two-factor authentication) to log in.
The fb_sms_sends table logs all SMS texts sent by the system.

However, due to an ETL issue, this table contains some invalid entries, specifically, 
rows where type = 'confirmation' or other unrelated message types (like friend requests). 
These records should be ignored.

Only rows with type = 'message' represent actual 2FA texts that were sent to users.

Use the fb_confirmers table to identify which of these messages were successfully confirmed by users.

Calculate the percentage of confirmed SMS 2FA messages (where type = 'message') sent on August 4, 2020.
*/
SELECT 
    (COUNT(c.phone_number) * 100.0) / COUNT(s.phone_number) AS confirmation_rate
FROM fb_sms_sends s
LEFT JOIN fb_confirmers c 
    ON s.phone_number = c.phone_number 
    AND s.ds = c.date
WHERE 
    s.type = 'message' 
    AND s.ds = '2020-08-04';