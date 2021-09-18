`FLOAT` and `DOUBLE` are floating-point types and calculations are APPROXIMATE.

Allow storing large numbers at low cost, but at the price of reduced accuracy. 

```
mysql> CREATE TABLE thingies (price FLOAT);

mysql> INSERT INTO thingies(price) VALUES (88.45);
 
mysql> SELECT * FROM thingies;
+-------+
| price |
+-------+
| 88.45 |
+-------+
```

```
mysql> INSERT INTO thingies(price) VALUES (8877.45);

mysql> SELECT * FROM thingies;
+---------+
| price   |
+---------+
|   88.45 |
| 8877.45 |
+---------+
```
 
```
INSERT INTO thingies(price) VALUES (8877665544.45);

mysql> SELECT * FROM thingies;
+------------+
| price      |
+------------+
|      88.45 |
|    8877.45 |
| 8877670000 |
+------------+
```