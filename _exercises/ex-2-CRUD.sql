CREATE DATABASE shirts_db;
USE shirts_db;

CREATE TABLE shirts
    (
        shirt_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
        article VARCHAR(100) NOT NULL,
        color VARCHAR(100) NOT NULL, 
        shirt_size VARCHAR(5) NOT NULL,
        last_worn INT NOT NULL DEFAULT 0
    );

DESC shirts;

INSERT INTO shirts(article, color, shirt_size, last_worn) VALUES
    ('t-shirt', 'white', 'S', 10),
    ('t-shirt', 'green', 'S', 200),
    ('polo shirt', 'black', 'M', 10),
    ('tank top', 'blue', 'S', 50),
    ('t-shirt', 'pink', 'S', 0),
    ('polo shirt', 'red', 'M', 5),
    ('tank top', 'white', 'S', 200),
    ('tank top', 'blue', 'M', 15);

INSERT INTO shirts(color, shirt_size, article, last_worn) VALUES
    ('pink', 'XS', 'tee', 0);

UPDATE shirts SET color = 'purple' WHERE shirt_id = 9;

UPDATE shirts SET last_worn = 1 WHERE shirt_id = 9;

DELETE FROM shirts WHERE last_worn > 50;

DELETE FROM shirts WHERE color = 'purple';

DELETE FROM shirts;

DROP TABLE shirts;

SHOW TABLES;
