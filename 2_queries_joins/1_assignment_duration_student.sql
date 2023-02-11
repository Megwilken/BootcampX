/* Get the total amount of time that Ibrahim Schimmel has spent on all assignments, select total amount of time as a single column

initial query:
SELECT SUM(assignment_submissions.duration) 
FROM assignment_submissions
JOIN students ON
students.id = assignment_submissions.student_id
WHERE students.name = 'Ibrahim Schimmel'

*/


SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';