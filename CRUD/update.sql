CREATE TABLE cats 
  ( 
     cat_id INT NOT NULL AUTO_INCREMENT, 
     name   VARCHAR(100), 
     breed  VARCHAR(100), 
     age    INT, 
     PRIMARY KEY (cat_id) 
  ); 

INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);

UPDATE cats SET name = 'Bingo' WHERE name = 'Ringo';

UPDATE cats SET age = 5 WHERE name = 'Egg';

UPDATE cats SET name = 'Jack' WHERE name = 'Jackson';

UPDATE cats SET breed = 'British Shorthair' WHERE name = 'Bingo';

UPDATE cats SET age = 12 WHERE breed = 'Maine Coon';