```
CREATE TABLE comments (
    content VARCHAR(180), 
    create_at TIMESTAMP DEFAULT NOW()
    );
```
```
INSERT INTO comments (content) VALUES('Comment 1');
INSERT INTO comments (content) VALUES('Comment 2');
INSERT INTO comments (content) VALUES('Comment 3');
```
```
mysql> SELECT * FROM comments ORDER BY create_at DESC;
+-----------+---------------------+
| content   | create_at           |
+-----------+---------------------+
| Comment 3 | 2021-09-18 12:45:14 |
| Comment 2 | 2021-09-18 12:45:09 |
| Comment 1 | 2021-09-18 12:45:03 |
+-----------+---------------------+
```
```
CREATE TABLE comments2 (
    content VARCHAR(100),
    changed_at TIMESTAMP DEFAULT NOW() ON UPDATE NOW()
    );
```