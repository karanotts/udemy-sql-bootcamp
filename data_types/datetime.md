https://dev.mysql.com/doc/refman/8.0/en/date-and-time-functions.html

```
mysql> CREATE TABLE bootcamp.people (name VARCHAR(100), birthday DATE, birthtime TIME, birthdate DATETIME);

mysql> INSERT INTO people (name, birthday, birthtime, birthdate) VALUES ('Anna', '1985-11-24', '10:08:25', '1985-11-24 10:08:25');
mysql> INSERT INTO people (name, birthday, birthtime, birthdate) VALUES ('John', '1976-03-22', '13:48:54', '1976-03-22 13:48:54');
mysql> INSERT INTO people (name, birthday, birthtime, birthdate) VALUES ('James', '1986-01-13', '17:22:43', '1986-01-13 17:22:43');

mysql> SELECT * FROM people;
+-------+------------+-----------+---------------------+
| name  | birthday   | birthtime | birthdate           |
+-------+------------+-----------+---------------------+
| Anna  | 1985-11-24 | 10:08:25  | 1985-11-24 10:08:25 |
| John  | 1976-03-22 | 13:48:54  | 1976-03-22 13:48:54 |
| James | 1986-01-13 | 17:22:43  | 1986-01-13 17:22:43 |
+-------+------------+-----------+---------------------+
```

```
mysql> INSERT INTO people (name, birthday, birthtime, birthdate) VALUES ('Today!', CURDATE(), CURTIME(), NOW());

mysql> SELECT * FROM people;
+--------+------------+-----------+---------------------+
| name   | birthday   | birthtime | birthdate           |
+--------+------------+-----------+---------------------+
| Anna   | 1985-11-24 | 10:08:25  | 1985-11-24 10:08:25 |
| John   | 1976-03-22 | 13:48:54  | 1976-03-22 13:48:54 |
| James  | 1986-01-13 | 17:22:43  | 1986-01-13 17:22:43 |
| Today! | 2021-09-18 | 10:54:42  | 2021-09-18 10:54:42 |
+--------+------------+-----------+---------------------+
```

`DAY()`
```
mysql> SELECT name, birthday, DAY(birthday) FROM people LIMIT 1;
+------+------------+---------------+
| name | birthday   | DAY(birthday) |
+------+------------+---------------+
| Anna | 1985-11-24 |            24 |
+------+------------+---------------+
```


`DAYNAME()`
```
mysql> SELECT name, birthday, DAYNAME(birthday) FROM people LIMIT 1;
+------+------------+-------------------+
| name | birthday   | DAYNAME(birthday) |
+------+------------+-------------------+
| Anna | 1985-11-24 | Sunday            |
+------+------------+-------------------+
```

`DAYOFWEEK()`
`DAYOFYEAR()`
`MONTH()`
`MONTHNAME()`
`HOUR()`
`MINUTE()`

<hr>

`DATE_FORMAT`

https://dev.mysql.com/doc/refman/8.0/en/date-and-time-functions.html#function_date-format

```
mysql> SELECT CONCAT(name, DATE_FORMAT(birthday, ' was born on a %W')) AS 'Born on a day' FROM people;
+------------------------------------+
| Born on a day                      |
+------------------------------------+
| Anna was born on a Sunday          |
| John was born on a Monday          |
| James was born on a Monday         |
| Today! was born on a Saturday      |
| Also today! was born on a Saturday |
+------------------------------------+
```

```
mysql> SELECT name, DATE_FORMAT(birthday, '%m/%d/%Y at %h:%i') AS 'Birthdate' FROM people;
+-------------+---------------------+
| name        | Birthdate           |
+-------------+---------------------+
| Anna        | 11/24/1985 at 12:11 |
| John        | 03/22/1976 at 12:03 |
| James       | 01/13/1986 at 12:01 |
| Today!      | 09/18/2021 at 12:09 |
| Also today! | 09/18/2021 at 12:09 |
+-------------+---------------------+
```