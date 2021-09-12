SELECT CONCAT(author_lname, ', ', author_fname) from books;


SELECT 
    author_fname AS 'First Name', 
    author_lname AS 'Last Name',
    CONCAT(author_fname, ' ', author_lname) AS 'Full Name' 
FROM books;


SELECT CONCAT_WS(' - ', title, author_fname, author_lname) FROM books;