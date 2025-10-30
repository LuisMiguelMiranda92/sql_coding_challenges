/*
mazon's information technology department is looking for information on employees' most recent logins.


The output should include all information related to each employee's most recent login.
*/
WITH RankedLogins AS (
  SELECT
    *,
    ROW_NUMBER() OVER (
      PARTITION BY worker_id
      ORDER BY login_timestamp DESC) AS rn
  FROM worker_logins
)
SELECT
  id,
  worker_id,
  login_timestamp,
  device_type,
  ip_address,
  city,
  region,
  country
FROM RankedLogins
WHERE
  rn = 1;