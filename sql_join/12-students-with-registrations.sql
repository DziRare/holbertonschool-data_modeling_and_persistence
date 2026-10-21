-- Scenario 5
SELECT name AS student_name
FROM students
INNER JOIN registrations ON students.id = registrations.student_id
GROUP BY student_name
ORDER BY student_name ASC;