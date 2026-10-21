SELECT course_title
FROM
	(SELECT title AS course_title, COUNT() as course_count
	FROM courses
	INNER JOIN enrollments ON courses.id = enrollments.course_id
	GROUP BY title)
WHERE course_count >
	(SELECT AVG(count) 
	FROM 
		(SELECT course_id, COUNT() AS count
		FROM enrollments
		GROUP BY course_id));
