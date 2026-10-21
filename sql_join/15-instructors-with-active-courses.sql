-- Scenario 8
SELECT name AS instructor_name
FROM instructors
WHERE id IN
    (SELECT instructor_id
    FROM courses
    INNER JOIN registrations ON registrations.course_id = courses.id);
