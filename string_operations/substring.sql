SELECT SUBSTRING('Hello World', 1, 4);  -- 'Hell'

SELECT SUBSTRING('Hello World', 7); -- 'World'

SELECT SUBSTRING('Hello World', -3); -- 'rld'


SELECT SUBSTRING(title, 1, 10) AS 'Short Title' FROM books;
-- +-------------+
-- | Short Title |
-- +-------------+
-- | The Namesa  |
-- | Norse Myth  |
-- | American G  |
-- | Consider t  |
-- +-------------+


SELECT 
    CONCAT(
        SUBSTRING(title, 1, 10), 
        '...'
    ) AS 'Short Title' 
FROM books;
-- +---------------+
-- | Short Title   |
-- +---------------+
-- | The Namesa... |
-- | Norse Myth... |
-- | American G... |
-- | Consider t... |
-- +---------------+