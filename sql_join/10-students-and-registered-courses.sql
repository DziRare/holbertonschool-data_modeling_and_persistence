-- Scenario 3
SELECT name as student_name, title as course_title
FROM students
INNER JOIN registrations ON students.id = registrations.student_id
INNER JOIN courses ON registrations.course_id = courses.id
ORDER BY student_name ASC, course_title ASC;