Task Description	
● Create a database with the name StudentManagementSystem. 

Create a table with named Student with attributes

: ● StudentID (Primary Key) ● FirstName ● LastName ● DateOfBirth ● Gender ● Email ● Phone

Insert 5 Records in students table



Enter password: **********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 16
Server version: 8.0.46 MySQL Community Server - GPL

Copyright (c) 2000, 2026, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.


mysql> create database StudentManagementSystem;
Query OK, 1 row affected (0.03 sec)

mysql> use StudentManagementSystem;
Database changed

mysql> create table Student(student_id varchar(10) not null primary key, First_name varchar(20) not null, Last_name varchar(10) not null, DateOfBirth DateTime not null, Gender varchar(10) not null, Email varchar(30) not null, Phone varchar(10) not null);
Query OK, 0 rows affected (0.11 sec)

mysql> desc Student;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| student_id  | varchar(10) | NO   | PRI | NULL    |       |
| First_name  | varchar(20) | NO   |     | NULL    |       |
| Last_name   | varchar(10) | NO   |     | NULL    |       |
| DateOfBirth | datetime    | NO   |     | NULL    |       |
| Gender      | varchar(10) | NO   |     | NULL    |       |
| Email       | varchar(30) | NO   |     | NULL    |       |
| Phone       | varchar(10) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
7 rows in set (0.17 sec)

mysql> insert into Student values('S101','Divya','Pawar','2004-12-05','Female','divyasp512@gmail.com','7385304523');
Query OK, 1 row affected (0.02 sec)

mysql> insert into Student values('S102','Avishkar','Pawar','2007-05-02','male','avishkar5@gmail.com','7376483749');
Query OK, 1 row affected (0.01 sec)

mysql> insert into Student values('S103','prachi','Patil','2005-06-09','Female','patil23@gmail.com','6383655372');
Query OK, 1 row affected (0.01 sec)

mysql> insert into Student values('S104','Sai','Bhosale','2008-12-09','male','saibhosale02@gmail.com','2474858595');
Query OK, 1 row affected (0.01 sec)

mysql> insert into Student values('S105','Asmi','Bhosale','2008-10-11','Female','asmi23@gmail.com','9987356485');
Query OK, 1 row affected (0.01 sec)


mysql> select * from Student;
+------------+------------+-----------+---------------------+--------+------------------------+------------+
| student_id | First_name | Last_name | DateOfBirth         | Gender | Email                  | Phone      |
+------------+------------+-----------+---------------------+--------+------------------------+------------+
| S101       | Divya      | Pawar     | 2004-12-05 00:00:00 | Female | divyasp512@gmail.com   | 7385304523 |
| S102       | Avishkar   | Pawar     | 2007-05-02 00:00:00 | male   | avishkar5@gmail.com    | 7376483749 |
| S103       | prachi     | Patil     | 2005-06-09 00:00:00 | Female | patil23@gmail.com      | 6383655372 |
| S104       | Sai        | Bhosale   | 2008-12-09 00:00:00 | male   | saibhosale02@gmail.com | 2474858595 |
| S105       | Asmi       | Bhosale   | 2008-10-11 00:00:00 | Female | asmi23@gmail.com       | 9987356485 |
+------------+------------+-----------+---------------------+--------+------------------------+------------+
5 rows in set (0.01 sec)

mysql>