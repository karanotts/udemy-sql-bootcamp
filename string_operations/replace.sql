SELECT REPLACE('Hello World', 'Hello', 'Good Morning'); -- Good Morning World


SELECT REPLACE('dogs cats hamsters elephants', ' ', ' and '); -- dogs and cats and hamsters and elephants


SELECT 
    SUBSTRING(
        REPLACE(title, 'e', '3'),
        1, 10
    ) AS 'L33t Sp34k'
FROM books;