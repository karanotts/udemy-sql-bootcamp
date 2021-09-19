SELECT title FROM books WHERE title != "fake_book";


SELECT title FROM books WHERE author_lname = "Gaiman";


SELECT title FROM books WHERE title LIKE "%White%";


SELECT title FROM books WHERE title NOT LIKE "%White%";


SELECT title, pages FROM books WHERE pages > 200;


SELECT title, pages FROM books WHERE pages < 200;


SELECT title, released_year 
FROM books 
WHERE released_year <= 2001;


SELECT title, author_lname, released_year 
FROM books 
WHERE author_lname = "Gaiman" AND released_year > 2002;


SELECT title, author_lname, released_year 
FROM books 
WHERE author_lname = "Gaiman" OR released_year > 2015;


SELECT title, author_lname, released_year 
FROM books 
WHERE author_lname = "Gaiman" 
    AND released_year > 2002 
    AND released_year < 2010;


SELECT title, released_year 
FROM books 
WHERE author_lname = "Gaiman" 
    AND released_year BETWEEN 2002 AND 2012;


-- if using DATETIME:
SELECT title, released_year 
FROM books 
WHERE author_lname = "Gaiman" 
    AND released_year NOT BETWEEN 2002 AND 2012;



SELECT title, author_lname
FROM books
WHERE author_lname IN ("Gaiman", "Harris");



SELECT title, released_year
FROM books
WHERE released_year NOT IN (2000, 2002, 2004, 2006);



SELECT title, released_year
FROM books
WHERE released_year >= 2000 
    AND released_year <= 2010
    AND released_year NOT IN (2000, 2002, 2004, 2006, 2008, 2010);



SELECT title, released_year
FROM books
WHERE released_year BETWEEN 2000 AND 2010
    AND released_year % 2 != 0
    ORDER BY released_year DESC;



SELECT title, released_year,
    CASE
        WHEN released_year >= 2000 THEN 'After 2000'
        ELSE 'Before 2000'
    END AS 'published'
FROM books
    ORDER BY released_year;



SELECT title, stock_quantity,
    CASE
        WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
        WHEN stock_quantity BETWEEN 51 AND 199 THEN '**'
        ELSE '***'
    END AS 'Stock'
FROM books;