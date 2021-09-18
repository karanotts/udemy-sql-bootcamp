SELECT SUM(pages) FROM books;
-- +------------+
-- | SUM(pages) |
-- +------------+
-- |       6623 |
-- +------------+


SELECT author_fname, author_lname, SUM(pages) 
FROM books 
GROUP BY author_lname, author_fname;;
-- +--------------+----------------+------------+
-- | author_fname | author_lname   | SUM(pages) |
-- +--------------+----------------+------------+
-- | Raymond      | Carver         |        702 |
-- | Michael      | Chabon         |        634 |
-- | Don          | DeLillo        |        320 |
-- | Dave         | Eggers         |       1293 |
-- ...