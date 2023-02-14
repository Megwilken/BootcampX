/* Get the total number of assignments for each day of bootcamp. 

initial query:


SELECT assignments.day as day, count(assignments.*) as total_assignments
FROM assignments
GROUP BY assignments.day
ORDER BY assignments.day;

*/

SELECT day, count(*) as total_assignments 
FROM assignments
GROUP BY day
ORDER BY day;