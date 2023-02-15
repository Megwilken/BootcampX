/* Get the total number of assistance_requests for a student. 

inital query


SELECT students.name as name, COUNT(assistance_requests.*) as total_assistances
FROM students
JOIN assistance_requests ON students.id = assistance_requests.student_id
WHERE students.name = 'Elliot Dickinson' 
GROUP BY students.name;

*/

SELECT count(assistance_requests.*) as total_assistances, students.name
FROM assistance_requests
JOIN students ON students.id = student_id
WHERE name = 'Elliot Dickinson'
GROUP BY students.name;