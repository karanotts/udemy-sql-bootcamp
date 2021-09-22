-- INNER JOIN
-- (  A (#) B  )


-- IMPLICIT INNER JOIN
SELECT * FROM customers, orders WHERE customers.id = orders.customer_id;


-- EXPLICIT INNER JOIN
SELECT * FROM customers 
INNER JOIN orders 
    ON customers.id = orders.customer_id;