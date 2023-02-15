/* initial query

SELECT AVG(.started_at - completed_at) as average_wait_time
FROM assistance_requests
WHERE completed_at IS NOT NULL;

*/

SELECT avg(started_at-created_at) as average_wait_time
FROM assistance_requests;