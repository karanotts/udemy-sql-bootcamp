SELECT COUNT(*) FROM books;

SELECT COUNT(DISTINCT author_fname) FROM books;

SELECT COUNT(title) 
FROM books 
WHERE title LIKE '%the%';