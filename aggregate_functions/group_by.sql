SELECT author_lname, COUNT(*) FROM books GROUP BY author_lname;


SELECT author_fname, author_lname, COUNT(*) 
FROM books 
GROUP BY author_lname, author_fname;
-- +--------------+----------------+----------+
-- | author_fname | author_lname   | COUNT(*) |
-- +--------------+----------------+----------+
-- | Raymond      | Carver         |        2 |
-- | Michael      | Chabon         |        1 |
-- | Don          | DeLillo        |        1 |
-- ...



SELECT released_year, COUNT(*) FROM books GROUP BY released_year;
-- +---------------+----------+
-- | released_year | COUNT(*) |
-- +---------------+----------+
-- |          1945 |        1 |
-- |          1981 |        1 |
-- |          1985 |        1 |
-- ...


SELECT 
    CONCAT(
        'In ',
        released_year,
        ' ', COUNT(*),
        ' book(s) released'
        ) 
    AS 'Books released by year'
FROM books 
GROUP BY released_year;
-- +----------------------------+
-- | Books released by year     |
-- +----------------------------+
-- | In 1945 1 book(s) released |
-- | In 1981 1 book(s) released |
-- | In 1985 1 book(s) released |
-- ...


SELECT author_fname, author_lname, MIN(released_year)
FROM books 
GROUP BY author_lname, author_fname;
-- +--------------+----------------+--------------------+
-- | author_fname | author_lname   | MIN(released_year) |
-- +--------------+----------------+--------------------+
-- | Raymond      | Carver         |               1981 |
-- | Michael      | Chabon         |               2000 |
-- | Don          | DeLillo        |               1985 |
-- ...


SELECT author_fname, author_lname, MAX(pages) 
FROM books 
GROUP BY author_lname, author_fname;
-- +--------------+----------------+------------+
-- | author_fname | author_lname   | MAX(pages) |
-- +--------------+----------------+------------+
-- | Raymond      | Carver         |        526 |
-- | Michael      | Chabon         |        634 |
-- | Don          | DeLillo        |        320 |
-- ...


SELECT
    CONCAT(
        author_fname, ' ', author_lname
    ) AS Author,
    MAX(pages) AS 'Longest book'
    FROM books
    GROUP BY author_fname, author_lname;
-- +----------------------+--------------+
-- | Author               | Longest book |
-- +----------------------+--------------+
-- | Dan Harris           |          256 |
-- | Dave Eggers          |          504 |
-- | David Foster Wallace |          343 |
-- ...