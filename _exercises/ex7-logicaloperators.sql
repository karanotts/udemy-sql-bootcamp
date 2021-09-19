SELECT title FROM books WHERE released_year < 1980;



SELECT title, author_lname 
FROM books
WHERE author_lname = 'Eggers' OR author_lname = 'Chabon';



SELECT title, author_lname, released_year
FROM books
    WHERE author_lname = 'Lahiri' 
    AND released_year > 2000;



SELECT title, pages
FROM books
    WHERE pages BETWEEN 100 AND 200;



SELECT title, author_lname
FROM books
    WHERE author_lname LIKE 'C%'
    OR author_lname LIKE 'S%';

-- or:

SELECT title, author_lname FROM books 
WHERE SUBSTR(author_lname,1,1) IN ('C', 'S');



SELECT title, author_lname,
    CASE
        WHEN title LIKE '%stories%' THEN 'Short Stories'
        WHEN title LIKE 'Just Kids' OR title LIKE 'A Heartbreaking Work%' THEN 'Memoir'
        ELSE 'Novel'
    END AS 'Type'
FROM books;



SELECT 
    title, 
    author_lname, 
    CASE
        WHEN COUNT(*) = 1 THEN '1 book')
        ELSE CONCAT(COUNT(*), ' books')
    END AS 'COUNT' 
FROM books 
GROUP BY author_lname;