/*Get the average duration of assistance requests for each cohort.

initial query:

SELECT cohorts.name as name, AVG(assistance_requests.completed_at - assistance_requests.started_at) AS average_assistance_time
FROM students
JOIN cohorts ON cohorts.id = students.cohort_id
join assistance_requests ON assistance_requests.student_id = students.id
GROUP BY cohorts.name
ORDER BY cohorts.name;
*/


SELECT cohorts.name, avg(completed_at - started_at) as average_assistance_time
FROM assistance_requests 
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time;