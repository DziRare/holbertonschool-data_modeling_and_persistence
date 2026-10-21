-- Scenario 1
SELECT title as course_title, name as instructor
FROM courses
INNER JOIN instructors ON courses.instructor_id = instructors.id
ORDER BY course_title ASC;
