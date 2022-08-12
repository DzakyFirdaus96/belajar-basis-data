MariaDB [(none)]> CREATE DATABASE sekolah;
Query OK, 1 row affected (0.069 sec)

MariaDB [(none)]> USE sekolah;
Database changed
MariaDB [sekolah]> SHOW TABLES;
Empty set (0.003 sec)

MariaDB [sekolah]> CREATE TABLE siswa (nis CHAR(8) PRIMARY KEY, nama VARCHAR(100), jk CHAR(1), tmpt_lahir VARCHAR(50), tgl_lahir DATE, alamat TEXT, kelas VARCHAR(10), nilai FLOAT);
Query OK, 0 rows affected (0.091 sec)

MariaDB [sekolah]> DESCRIBE siswa;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| nis        | char(8)      | NO   | PRI | NULL    |       |
| nama       | varchar(100) | YES  |     | NULL    |       |
| jk         | char(1)      | YES  |     | NULL    |       |
| tmpt_lahir | varchar(50)  | YES  |     | NULL    |       |
| tgl_lahir  | date         | YES  |     | NULL    |       |
| alamat     | text         | YES  |     | NULL    |       |
| kelas      | varchar(10)  | YES  |     | NULL    |       |
| nilai      | float        | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
8 rows in set (0.069 sec)

MariaDB [sekolah]> SELECT * FROM siswa;
Empty set (0.115 sec)


MariaDB [sekolah]> INSERT INTO siswa VALUES ('12100274', 'FIRDAUS WIGUNA', 'L', 'SUBANG', '2005-08-17', 'KALIJATI', '11-
Query OK, 1 row affected (0.083 sec)

MariaDB [sekolah]> DESCRIBE siswa;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| nis        | char(8)      | NO   | PRI | NULL    |       |
| nama       | varchar(100) | YES  |     | NULL    |       |
| jk         | char(1)      | YES  |     | NULL    |       |
| tmpt_lahir | varchar(50)  | YES  |     | NULL    |       |
| tgl_lahir  | date         | YES  |     | NULL    |       |
| alamat     | text         | YES  |     | NULL    |       |
| kelas      | varchar(10)  | YES  |     | NULL    |       |
| nilai      | float        | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
8 rows in set (0.049 sec)

MariaDB [sekolah]> SHOW TABLES;
+-------------------+
| Tables_in_sekolah |
+-------------------+
| siswa             |
+-------------------+
1 row in set (0.011 sec)

MariaDB [sekolah]> INSERT INTO siswa VALUES ('66508574','ALQuery OK, 1 row affected (0.085 sec)8-06', 'SUKAMELANG', '11-





MariaDB [sekolah]> INSERT INTO siswa VALUES ('61484143','ASEP RIZKI', 'L', 'SUBANG', '2006-07-06', 'CIJAMBE', '11-RPL-1', '93.67');
Query OK, 1 row affected (0.011 sec)

MariaDB [sekolah]> INSERT INTO siswa VALUES ('61558808','MUQuery OK, 1 row affected (0.012 sec)-25', 'CIJAMBE', '11-RPL-1', '87.67');
MariaDB [sekolah]> INSERT INTO siswa VALUES ('92726288','FARIZ FADLI', 'L', 'SUBANG', '2005-07-15', 'CIJAMBE', '11-RPL-1', '65.87');
Query OK, 1 row affected (0.002 sec)

MariaDB [sekolah]> SHOW TABLES;                            +-------------------+                                      | Tables_in_sekolah |
+-------------------+
| siswa             |
+-------------------+
1 row in set (0.017 sec)

MariaDB [sekolah]> SELECT * FROM siswa;
+----------+----------------+------+------------+------------+------------+----------+-------+
| nis      | nama           | jk   | tmpt_lahir | tgl_lahir  | alamat     | kelas    | nilai |
+----------+----------------+------+------------+------------+------------+----------+-------+
| 12100274 | FIRDAUS WIGUNA | L    | SUBANG     | 2005-08-17 | KALIJATI   | 11-RPL-1 | 70.94 |
| 61484143 | ASEP RIZKI     | L    | SUBANG     | 2006-07-06 | CIJAMBE    | 11-RPL-1 | 93.67 |
| 61558808 | MUTHIA ZAHRA   | P    | SUBANG     | 2006-07-25 | CIJAMBE    | 11-RPL-1 | 87.67 |
| 66508574 | ALYA ELIDHIYA  | P    | SUBANG     | 2005-08-06 | SUKAMELANG | 11-RPL-1 | 63.74 |
| 92726288 | FARIZ FADLI    | L    | SUBANG     | 2005-07-15 | CIJAMBE    | 11-RPL-1 | 65.87 |
+----------+----------------+------+------------+------------+------------+----------+-------+
5 rows in set (0.119 sec)

MariaDB [sekolah]> UPDATE siswa SET tmpt_lahir="BANDUNG" WHERE nis="12100274";
Query OK, 1 row affected (0.129 sec)
Rows matched: 1  Changed: 1  Warnings: 0


MariaDB [sekolah]> SELECT * FROM siswa;                    +----------+----------------+------+------------+------------+------------+----------+-------+
| nis      | nama           | jk   | tmpt_lahir | tgl_lahir  | alamat     | kelas    | nilai |
+----------+----------------+------+------------+------------+------------+----------+-------+
| 12100274 | FIRDAUS WIGUNA | L    | BANDUNG    | 2005-08-17 | KALIJATI   | 11-RPL-1 | 70.94 |
| 61484143 | ASEP RIZKI     | L    | SUBANG     | 2006-07-06 | CIJAMBE    | 11-RPL-1 | 93.67 |
| 61558808 | MUTHIA ZAHRA   | P    | SUBANG     | 2006-07-25 | CIJAMBE    | 11-RPL-1 | 87.67 |
| 66508574 | ALYA ELIDHIYA  | P    | SUBANG     | 2005-08-06 | SUKAMELANG | 11-RPL-1 | 63.74 |
| 92726288 | FARIZ FADLI    | L    | SUBANG     | 2005-07-15 | CIJAMBE    | 11-RPL-1 | 65.87 |
+----------+----------------+------+------------+------------+------------+----------+-------+
5 rows in set (0.009 sec)


MariaDB [sekolah]> UPDATE siswa SET tgl_lahir="2005-05-05", alamat="BINONG" WHERE nis="12100274";
Query OK, 1 row affected (0.073 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [sekolah]> SELECT * FROM siswa;
+----------+----------------+------+------------+------------+------------+----------+-------+
| nis      | nama           | jk   | tmpt_lahir | tgl_lahir  | alamat     | kelas    | nilai |
+----------+----------------+------+------------+------------+------------+----------+-------+
| 12100274 | FIRDAUS WIGUNA | L    | BANDUNG    | 2005-05-05 | BINONG     | 11-RPL-1 | 70.94 |
| 61484143 | ASEP RIZKI     | L    | SUBANG     | 2006-07-06 | CIJAMBE    | 11-RPL-1 | 93.67 |
| 61558808 | MUTHIA ZAHRA   | P    | SUBANG     | 2006-07-25 | CIJAMBE    | 11-RPL-1 | 87.67 |
| 66508574 | ALYA ELIDHIYA  | P    | SUBANG     | 2005-08-06 | SUKAMELANG | 11-RPL-1 | 63.74 |
| 92726288 | FARIZ FADLI    | L    | SUBANG     | 2005-07-15 | CIJAMBE    | 11-RPL-1 | 65.87 |
+----------+----------------+------+------------+------------+------------+----------+-------+
5 rows in set (0.002 sec)


MariaDB [sekolah]> UPDATE siswa SET nilai="80.89" WHERE nis="92726288";
Query OK, 1 row affected (0.015 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [sekolah]> UPDATE siswa SET nilai="89.46" WHERE nis="66508574";
Query OK, 1 row affected (0.010 sec)
Rows matched: 1  Changed: 1  Warnings: 0




MariaDB [sekolah]> DELETE FROM siswa WHERE nis="12100274";
Query OK, 1 row affected (0.018 sec)

MariaDB [sekolah]> SELECT * FROM siswa;
+----------+---------------+------+------------+------------+------------+----------+-------+
| nis      | nama          | jk   | tmpt_lahir | tgl_lahir  | alamat     | kelas    | nilai |
+----------+---------------+------+------------+------------+------------+----------+-------+
| 61484143 | ASEP RIZKI    | L    | SUBANG     | 2006-07-06 | CIJAMBE    | 11-RPL-1 | 93.67 |
| 61558808 | MUTHIA ZAHRA  | P    | SUBANG     | 2006-07-25 | CIJAMBE    | 11-RPL-1 | 87.67 |
| 66508574 | ALYA ELIDHIYA | P    | SUBANG     | 2005-08-06 | SUKAMELANG | 11-RPL-1 | 89.46 |
| 92726288 | FARIZ FADLI   | L    | SUBANG     | 2005-07-15 | CIJAMBE    | 11-RPL-1 | 80.89 |
+----------+---------------+------+------------+------------+------------+----------+-------+
4 rows in set (0.002 sec)
