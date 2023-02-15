/* Instruction
Get the average time of an assistance request.

initial query:

SELECT AVG(assistance_requests.completed_at - assistance_requests.started_at) AS average_assistance_request_duration
FROM assistance_requests

*/

SELECT avg(completed_at - started_at) as average_assistance_request_duration
FROM assistance_requests;
