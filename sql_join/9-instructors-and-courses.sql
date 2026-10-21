-- Scenario 2
SELECT name as instructor, title as course_title
FROM instructors
LEFT JOIN courses ON courses.instructor_id = instructors.id
ORDER BY instructor ASC, course_title ASC;