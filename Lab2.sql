Task Description
	
Consider a simple database  Demo with one tables: Employee Employee Table:

 ● Columns:emp_id (Primary Key), first_name, last_name, age, email 



mysql> create database demo;
Query OK, 1 row affected (0.12 sec)

mysql> use demo;
Database changed
mysql> create table Employee(emp_id varchar(20) not null Primary Key, first_name varchar(20) not null, last_name varchar(20) not null, age varchar(10) not null, email varchar(30) not null);
Query OK, 0 rows affected (0.14 sec)

mysql> desc Employee;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| emp_id     | varchar(20) | NO   | PRI | NULL    |       |
| first_name | varchar(20) | NO   |     | NULL    |       |
| last_name  | varchar(20) | NO   |     | NULL    |       |
| age        | varchar(10) | NO   |     | NULL    |       |
| email      | varchar(30) | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
5 rows in set (0.07 sec)





Task 1: Insert Data Write an SQL INSERT statement to insert data into the Employee table. 

mysql> insert into Employee values('e1','divya','pawar','21','divyap512@gmail.com');
Query OK, 1 row affected (0.03 sec)

mysql> insert into Employee values('e2','sourabh','kadam','24','sourabh12@gmail.com');
Query OK, 1 row affected (0.01 sec)

mysql> insert into Employee values('e3','avi','pawar','10','avip2007@gmail.com');
Query OK, 1 row affected (0.01 sec)

mysql> insert into Employee values('e4','sai','bhosale','30','saiib2007@gmail.com');
Query OK, 1 row affected (0.01 sec)

mysql> insert into Employee values('e5','asmi','bhosale','37','asmmiib2007@gmail.com');
Query OK, 1 row affected (0.01 sec)

mysql> insert into Employee values('e6','reshma','yadav','51','reshamm@gmail.com');
Query OK, 1 row affected (0.01 sec)

mysql> select * from Employee;
+--------+------------+-----------+-----+-----------------------+
| emp_id | first_name | last_name | age | email                 |
+--------+------------+-----------+-----+-----------------------+
| e1     | divya      | pawar     | 21  | divyap512@gmail.com   |
| e2     | sourabh    | kadam     | 24  | sourabh12@gmail.com   |
| e3     | avi        | pawar     | 10  | avip2007@gmail.com    |
| e4     | sai        | bhosale   | 30  | saiib2007@gmail.com   |
| e5     | asmi       | bhosale   | 37  | asmmiib2007@gmail.com |
| e6     | reshma     | yadav     | 51  | reshamm@gmail.com     |
+--------+------------+-----------+-----+-----------------------+
6 rows in set (0.00 sec)




Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the first_name and last_name of all employees from the Employee table. 

mysql> select first_name, last_name from Employee;
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| divya      | pawar     |
| sourabh    | kadam     |
| avi        | pawar     |
| sai        | bhosale   |
| asmi       | bhosale   |
| reshma     | yadav     |
+------------+-----------+
6 rows in set (0.00 sec)





Task 3: Filtering Data Write an SQL SELECT statement to retrieve the first_name, last_name, and age of employees who are older than 30 years. 

mysql> select first_name, last_name from Employee where age > 30;
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| asmi       | bhosale   |
| reshma     | yadav     |
+------------+-----------+
2 rows in set (0.01 sec)





Task 4: Updating Data Write an SQL UPDATE statement to increase the age of employees by 1 year for all employees older than 2

mysql> update Employee set age = age + 1 where age > 2;
Query OK, 6 rows affected (0.02 sec)
Rows matched: 6  Changed: 6  Warnings: 0

mysql> select * from Employee;
+--------+------------+-----------+-----+-----------------------+
| emp_id | first_name | last_name | age | email                 |
+--------+------------+-----------+-----+-----------------------+
| e1     | divya      | pawar     | 22  | divyap512@gmail.com   |
| e2     | sourabh    | kadam     | 25  | sourabh12@gmail.com   |
| e3     | avi        | pawar     | 11  | avip2007@gmail.com    |
| e4     | sai        | bhosale   | 31  | saiib2007@gmail.com   |
| e5     | asmi       | bhosale   | 38  | asmmiib2007@gmail.com |
| e6     | reshma     | yadav     | 52  | reshamm@gmail.com     |
+--------+------------+-----------+-----+-----------------------+
6 rows in set (0.00 sec)