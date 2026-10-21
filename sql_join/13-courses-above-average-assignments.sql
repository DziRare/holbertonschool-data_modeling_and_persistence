-- Scenario 6
SELECT course_title
FROM (
    SELECT courses.title AS course_title,
           COUNT(assignments.course_id) AS number_of_registrations
    FROM courses
    LEFT JOIN assignments ON courses.id = assignments.course_id
    GROUP BY courses.id, courses.title
) AS course_counts
WHERE number_of_registrations > (
    SELECT AVG(number_of_registrations)
    FROM (
        SELECT COUNT(assignments.course_id) AS number_of_registrations
        FROM courses
        LEFT JOIN assignments ON courses.id = assignments.course_id
        GROUP BY courses.id
    ) AS avg_counts
)
ORDER BY course_title ASC;