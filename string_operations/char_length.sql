SELECT CHAR_LENGTH('Hello World'); -- 11


SELECT author_lname AS 'Last Name', CHAR_LENGTH(author_lname) AS 'Last Name Chars' FROM books;
-- +----------------+-----------------+
-- | Last Name      | Last Name Chars |
-- +----------------+-----------------+
-- | Lahiri         |               6 |
-- | Gaiman         |               6 |
-- | Gaiman         |               6 |
-- | Lahiri         |               6 |
-- | Eggers         |               6 |
-- | Eggers         |               6 |
-- | Chabon         |               6 |
-- | Smith          |               5 |
-- | Eggers         |               6 |
-- | Gaiman         |               6 |
-- | Carver         |               6 |
-- | Carver         |               6 |
-- | DeLillo        |               7 |
-- | Steinbeck      |               9 |
-- | Foster Wallace |              14 |
-- | Foster Wallace |              14 |
-- +----------------+-----------------+


SELECT DISTINCT CONCAT(
    author_lname, 
    ' is ', 
    CHAR_LENGTH(author_lname), 
    ' characters long '
) AS 'How long the last names:'
FROM books;
-- +---------------------------------------+
-- | How long the last names:              |
-- +---------------------------------------+
-- | Lahiri is 6 characters long           |
-- | Gaiman is 6 characters long           |
-- | Eggers is 6 characters long           |
-- | Chabon is 6 characters long           |
-- | Smith is 5 characters long            |
-- | Carver is 6 characters long           |
-- | DeLillo is 7 characters long          |
-- | Steinbeck is 9 characters long        |
-- | Foster Wallace is 14 characters long  |
-- +---------------------------------------+