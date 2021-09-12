SELECT title, author_fname, author_lname FROM books WHERE author_fname LIKE 'Dav%';


SELECT title, author_fname, author_lname FROM books WHERE title LIKE '%the%';


SELECT title, author_fname, author_lname FROM books WHERE title LIKE 'the circle';


SELECT title, author_fname, author_lname FROM books WHERE title LIKE '_________'; -- where title is (n*_) chars long


SELECT title FROM books WHERE title LIKE '%\%%'; -- \ is the escape sign
-- +-------------+
-- | title       |
-- +-------------+
-- | 10% Happier |
-- +-------------+