SELECT title AS course_title, COUNT(course_id) AS enrollment_count
FROM courses
LEFT JOIN enrollments ON courses.id = enrollments.course_id
GROUP BY course_title;