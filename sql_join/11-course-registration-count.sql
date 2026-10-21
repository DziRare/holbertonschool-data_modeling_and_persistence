-- Scenario 4
SELECT title as course_title, COUNT(course_id) as number_of_registrations
FROM courses
LEFT JOIN registrations ON registrations.course_id = courses.id
GROUP BY course_title
ORDER BY number_of_registrations DESC, course_title ASC;