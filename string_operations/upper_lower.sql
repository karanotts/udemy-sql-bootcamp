SELECT DISTINCT author_fname, UPPER(author_lname) FROM books;
-- +--------------+---------------------+
-- | author_fname | UPPER(author_lname) |
-- +--------------+---------------------+
-- | Jhumpa       | LAHIRI              |
-- | Neil         | GAIMAN              |
-- | Dave         | EGGERS              |
-- | Michael      | CHABON              |
-- | Patti        | SMITH               |
-- | Raymond      | CARVER              |
-- | Don          | DELILLO             |
-- | John         | STEINBECK           |
-- | David        | FOSTER WALLACE      |
-- +--------------+---------------------+


SELECT CONCAT('Upper title ', UPPER(title)) FROM books;
 
SELECT CONCAT('Lower title ', LOWER(title)) FROM books;