CREATE TABLE inventory(
    item_name VARCHAR(50),
    price DECIMAL(8,2),
    quantity INT
    );


SELECT CURRENT_TIME();


SELECT CURRENT_DATE();


SELECT DAYNAME(CURRENT_DATE());


SELECT DAYOFWEEK(CURRENT_DATE());


SELECT DATE_FORMAT(CURRENT_DATE(), '%m/%d/%Y');


SELECT DATE_FORMAT(CURRENT_TIMESTAMP(), '%M %D at %h:%i');


CREATE TABLE tweets (
    content VARCHAR(200), 
    username VARCHAR(50), 
    created_at TIMESTAMP DEFAULT NOW()
    );

