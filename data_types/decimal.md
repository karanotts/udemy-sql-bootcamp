`DECIMAL` is a fixed point type and calculations are EXACT.

`DECIMAL(5,2)`

5 digits total, 2 after decimal comma


```
mysql> CREATE TABLE bootcamp.items (price DECIMAL(5,2));
Query OK, 0 rows affected (0.06 sec)
```

```
mysql> INSERT INTO items(price) VALUES (243.77);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM items;
+--------+
| price  |
+--------+
| 243.77 |
+--------+
```
<hr>

If value is > than max allowed, max allowed will be inserted, so 999.99 in this case. 

```
mysql> INSERT INTO items(price) VALUES (2435.77);
Query OK, 1 row affected, 1 warning (0.01 sec)

mysql> SHOW WARNINGS;
+---------+------+------------------------------------------------+
| Level   | Code | Message                                        |
+---------+------+------------------------------------------------+
| Warning | 1264 | Out of range value for column 'price' at row 1 |
+---------+------+------------------------------------------------+

mysql> SELECT * FROM items;
+--------+
| price  |
+--------+
| 999.99 |
+--------+
```

Oops... Probably best to set restricted mode! ;)

<hr>

If there's too many digits after the decimal point, value will get rounded:

```
mysql> INSERT INTO items(price) VALUES (24.777);
Query OK, 1 row affected, 1 warning (0.03 sec)

mysql> SHOW WARNINGS;
+-------+------+--------------------------------------------+
| Level | Code | Message                                    |
+-------+------+--------------------------------------------+
| Note  | 1265 | Data truncated for column 'price' at row 1 |
+-------+------+--------------------------------------------+

mysql> SELECT * FROM items;
+--------+
| price  |
+--------+
| 999.99 |
| 243.77 |
|  24.78 |
+--------+
```