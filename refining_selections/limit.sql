SELECT * FROM books LIMIT 5;


SELECT title AS 'Recently added', released_year FROM books ORDER BY released_year DESC LIMIT 5;


SELECT title AS 'Low stock', stock_quantity FROM books ORDER BY stock_quantity LIMIT 5;


SELECT title AS 'Recently added', released_year FROM books ORDER BY released_year DESC LIMIT 3,1; -- start with position 4 (0,1,2,3) and show 1 from there