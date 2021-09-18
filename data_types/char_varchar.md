`CHAR` has a fixed length, 0 to 255.

`CHAR` is faster for fixed length text (ie. state abbreviations `CA`, `NY`)

`CHAR(5)` has a fixed lenght of 5, so if only two characters are added, ' ' will be inserted into remaining place, ie:

    "CA" > `CA   ` 


`VARCHAR` allows variable length within set constraints, so if allowed is 10 chars, but only 2 are used, exactly two chars will be added:

    "CA" > `CA` 



If mysql is set to strict mode `set global sql_mode='STRICT_TRANS_TABLES';`, character restriction is enforced:

```
mysql> CREATE TABLE dogs (name CHAR(15), breed VARCHAR(15));
mysql> INSERT INTO dogs (name, breed) VALUES ('Tucker', 'German Schepherd');

ERROR 1406 (22001): Data too long for column 'breed' at row 1
```

With strict mode disabled `set global sql_mode='';`, value is truncated to match restriction:
```
mysql> INSERT INTO dogs (name, breed) VALUES ('Tucker the Flying Piplet', 'German Schepherd');

Query OK, 1 row affected, 2 warnings (0.01 sec)
```
```
mysql> SHOW WARNINGS;
+---------+------+--------------------------------------------+
| Level   | Code | Message                                    |
+---------+------+--------------------------------------------+
| Warning | 1265 | Data truncated for column 'name' at row 1  |
| Warning | 1265 | Data truncated for column 'breed' at row 1 |
+---------+------+--------------------------------------------+
```
```
mysql> SELECT * FROM dogs;
+-----------------+-----------------+
| name            | breed           |
+-----------------+-----------------+
| Tucker the Flyi | German Schepher |
+-----------------+-----------------+
```