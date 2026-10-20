SELECT authors.name, books.title
FROM authors
LEFT JOIN books ON books.author_id=authors.id
ORDER BY books.title ASC
;
