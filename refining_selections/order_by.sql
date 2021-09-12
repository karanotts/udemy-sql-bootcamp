SELECT * FROM books ORDER BY released_year;


SELECT title FROM books ORDER BY title DESC;


SELECT title FROM books ORDER BY pages;


SELECT
  title,
  author_fname,
  author_lname,
  released_year
FROM books
ORDER BY 4; -- nth row in table, 'released_year' 


SELECT author_fname, author_lname FROM books ORDER BY author_lname, author_fname;


SELECT author_fname, author_lname FROM books ORDER BY 2, 1;