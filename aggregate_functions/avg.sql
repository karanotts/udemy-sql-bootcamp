SELECT AVG(pages) FROM books;
-- +------------+
-- | AVG(pages) |
-- +------------+
-- |   348.5789 |
-- +------------+


SELECT released_year, AVG(stock_quantity) FROM books GROUP BY released_year;
-- +---------------+---------------------+
-- | released_year | AVG(stock_quantity) |
-- +---------------+---------------------+
-- |          1945 |             95.0000 |
-- |          1981 |             23.0000 |
-- |          1985 |             49.0000 |
-- ...


SELECT author_fname, author_lname, AVG(pages) FROM books GROUP BY author_lname, author_fname;
-- +--------------+----------------+------------+
-- | author_fname | author_lname   | AVG(pages) |
-- +--------------+----------------+------------+
-- | Raymond      | Carver         |   351.0000 |
-- | Michael      | Chabon         |   634.0000 |
-- | Don          | DeLillo        |   320.0000 |
-- ...