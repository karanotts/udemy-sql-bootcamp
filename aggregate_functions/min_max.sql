SELECT MIN(pages) FROM books;
-- +------------+
-- | MIN(pages) |
-- +------------+
-- |        176 |
-- +------------+


SELECT MAX(pages) FROM books;
-- +------------+
-- | MAX(pages) |
-- +------------+
-- |        634 |
-- +------------+


-- SUBQUERY - time consuming!
SELECT pages, title 
FROM books 
WHERE pages = (
    SELECT MAX(pages) 
    FROM books
);
-- +-------+-------------------------------------------+
-- | pages | title                                     |
-- +-------+-------------------------------------------+
-- |   634 | The Amazing Adventures of Kavalier & Clay |
-- +-------+-------------------------------------------+


SELECT pages, title 
FROM books 
ORDER BY pages DESC LIMIT 1;
-- +-------+-------------------------------------------+
-- | pages | title                                     |
-- +-------+-------------------------------------------+
-- |   634 | The Amazing Adventures of Kavalier & Clay |
-- +-------+-------------------------------------------+