SHOW DATABASES;

CREATE DATABASE my_database;

DROP DATABASE my_database;

USE bootcamp;

SELECT DATABASE();

/*
CREATE TABLE tablename
  (
    column_name data_type,
    column_name data_type
  );
*/

CREATE TABLE dogs 
    (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL DEFAULT 'not provided',
    age INT NOT NULL DEFAULT 99,
    PRIMARY KEY (id)
    );


-- SHOW TABLES; 
-- SHOW COLUMNS FROM dogs;
-- DROP TABLE dogs;
-- DESC dogs;



INSERT INTO dogs(name,age) VALUES('Tucker', 1), ('Jazz', 1), ('Zack', 2);

SELECT * FROM dogs;

/*
+----+--------+-----+
| id | name   | age |
+----+--------+-----+
|  1 | Tucker |   1 |
|  2 | Jazz   |   1 |
|  3 | Zack   |   2 |
+----+--------+-----+
3 rows in set (0.00 sec)
*/

-- SHOW WARNINGS;
-- SHOW ERRORS;

