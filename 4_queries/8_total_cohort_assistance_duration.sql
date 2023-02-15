/* initial query

SELECT cohorts.name  as cohorts, SUM(assistance_requests.completed_at) - assistance_requests.started_at) as total_duration
FROM assistance_requests
join students on students.id = assistance_requests.student_id
join cohorts on cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY total_duration DESC

*/

SELECT cohorts.name as cohort, sum(completed_at-started_at) as total_duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts on cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_duration;