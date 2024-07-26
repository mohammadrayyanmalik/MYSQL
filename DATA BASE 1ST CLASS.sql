-- To create database
CREATE DATABASE mohammad_rayyan;

-- To see all databases
SHOW DATABASES;

-- To select database (syntex_USE db_name)
USE petshop;
-- To show all tables first used database and then (show table)
SHOW TABLES;

USE mohammad_rayyan;

SHOW TABLES;

-- To delete database (DROP DATABASE db_name)
DROP DATABASE mohammad_rayyan;
SHOW DATABASES;
--  create table
CREATE TABLE employee(
employee_id INT,
first_name VARCHAR(50),
Last_name VARCHAR(50)
);
SHOW TABLES;


CREATE TABLE student(
rool_no INT,
first_name VARCHAR(50),
last_name VARCHAR(50),
age INT,
birth_date DATE,
phone_no INT
);

-- desc (describe tables detials)
DESC employee;
drop table student;

-- ALTER used for edit in existing table either add or delete
-- ALTER TABLE < table_name> ADD COLUMN <column_name> <data_type>
ALTER TABLE student ADD COLUMN address VARCHAR(50);
DESC student;	


-- ALTER TABLE < table_name> ADD COLUMN <new_column_name> <data_type> AFTER < EXISTING_COLUMN_NAME>
ALTER TABLE student ADD COLUMN teacher_name VARCHAR(50) AFTER age;
DESC student;

-- ALTER TABLE <table_name> ADD COLUMN< new_column_name> <data_type> FIRST;
ALTER TABLE student ADD COLUMN email VARCHAR (80) FIRST;
DESC student;


--  to delete existing column
-- ALTER TABLE <table_name> DROP COLUMN <COLUMN NAME>;
ALTER TABLE student DROP COLUMN email;


DROP TABLE employee;
SHOW TABLES;
DESC student;

CREATE TABLE library(
libraray_name VARCHAR(80),
book VARCHAR (50), 
id INT 
);
SHOW TABLES; 
DESC library;

-- TO RENAME THE COLUMN NAME
ALTER TABLE < table_name> CHANGe <OLD_COL_NAME> <NEW_COL_NAME>
ALTER TABLE library CHANGE book notebook VARCHAR(50);
ALTER TABLE library CHANGE 	id library_id INT;

-- TO RENAME THE TABLE NAME
-- ALTER TABLE <OLD_TABLE_NAME> RENAME TO <NEW_TABLE_NAME>
ALTER TABLE library RENAME TO library_detials;
SHOW TABLES;


CREATE DATABASE tata_company;
 USE tata_company;
 CREATE TABLE department(
 department_id CHAR(4),
 department_name VARCHAR(40)
 );
 
 
 DESC department;
 
 ALTER TABLE department ADD COLUMN department_type VARCHAR(30);
 ALTER TABLE department DROP COLUMN department_type;


-- INSERT INTO <table_name> VALUES (V1, V2,V3.......)
INSERT INTO department VALUES ("D1","IT");
select * from department;

-- INSERT INTO <table_NAME> (COLUMN_NAME) VALUES (C1V1,C2V2...)

INSERT INTO department (department_id) VALUES ("D2");
SELECT * FROM department;


INSERT INTO department ( department_name) VALUES ("vedant");
select * from department;
INSERT INTO department VALUES ("D4","RAYYAN");
INSERT INTO department (department_name, department_id) VALUES ("faizan","D5");
select *  FROM department;


CREATE TABLE employe(
emplyee_id int,
employee_name  VARCHAR(50),
employee_age INT
);
DESC employe;

INSERT INTO employe VALUES ("1","RAYYAN","21");
SELECT * FROM employe;
INSERT INTO employe (emplyee_id, employee_age) VALUES ("2","32");

INSERT INTO employe (emplyee_id, employee_name) VALUES (21,"faizan");



-- INSERT INTO <table_ name> VALUE (V1,V2,V3),(V1,V2,V3) ITS USED FOR WITHOUT COLUMN NAME
-- INSERT INTO <table_ name> (C1,C2) VALUES (V1-V2),(V1,V2)  ITS USED FOR WITH COLUMN NAME

INSERT INTO employe VALUES 
(22,"Qasim",50),
(22,"Qasim",50),
(22,"Qasim",50),
(22,"Qasim",50);
select * FROM employe;


INSERT INTO employe (emplyee_id, employee_name) VALUES 
(23,"ASRAR"),
(25,"IMRAN"),
(24,"NISAR");

show databases;
use tata_compamy;
CREATE TABLE computer_type(
computer_id char(8),
computer_name varchar(70),
compUter_capacity VARCHAR(80)
);

ALTER TABLE computer_type ADD COLUMN moniters VARCHAR(70) FIRST;
DESC computer_type;

INSERT INTO computer_type (computer_id,computer_name, compUter_capacity) VALUES ("20","LENOVO","126GB"),
 ("25","HP","120GB"),
  ("21","SAMSUNG","64GB"),
   ("22","WEX","512GB"),
    ("23","LENOVO","256GB");
    SELECT * FROM computer_type;

SHOW TABLES;

ALTER TABLE computer_type MODIFY computer_name VARCHAR(50);   


drop table computer_type;        
CREATE TABLE department(
Department_id INT UNIQUE NOT NULL,
department_name VARCHAR(60) NOT NULL
);


SHOW TABLES;

INSERT INTO department values (101,"qasim");

DESC department;
SELECT * FROM department;
INSERT INTO department VALUE (NULL,"RAYYAN");
INSERT INTO department VALUES (103,NULL);

drop table department;
SELECT * FROM department; 


CREATE TABLE faizan(
faizan_id char(2) PRIMARY KEY,
faizan_name VARCHAR(60) NOT NULL,
email_id VARCHAR(90) UNIQUE NOT NULL
);

DESC faizan;

INSERT INTO faizan (faizan_id,email_id) VALUES ("01",RAYYAN111);




-- to add not null constraint
-- ALTER TABLE <table name> MODIFY <COL-NAME> <DATA-TYPE> ; 
-- TO REMOVE NOT NULL
-- ALTER TABLE <table name> MODIFY <COL-NAME> <DATA-TYPE> ; 

ALTER TABLE faizan MODIFY faizan_name VARCHAR (60) not null;
DESC faizan;

ALTER TABLE faizan MODIFY faizan_name varchar(80);


ALTER TABLE faizan DROP INDEX email_id;
ALTER TABLE faizan ADD UNIQUE (EMAIL_ID);


ALTER TABLE faizan DROP primary key;
DESC FAIZAN;

ALTER TABLE faizan ADD PRIMARY KEY(faizan_id);


alter table faizan ADD COLUMN FAIZAN_SALARY Int ;
DESC faizan;

ALTER TABLE faizan ALTER faizan_salary SET DEFAULT (100);
desc faizan;
insert into faizan (faizan_id,faizan_name,email_id) VALUES
("E2","hi","n@GAIL");
insert into faizan (faizan_id,faizan_name,email_id,FAIZAN_SALARY) VALUES
("E3","hi","@GAIL", 50000);
ALTER TABLE faizan ADD COLUMN addmission_date datetime;

DESC faizan;
select * FROm faizan;

-- ALTER TABLE <TABLE_NAME> ADD CONSTRAINT <CONSTRAINT_NAME> CHECK (CONDITION);
ALTER TABLE faizan ADD CONSTRAINT CHECK_SALARY CHECK (faizan_salary>=0);
insert into faizan values ("w1","gg","@aaaa","10","2001-01-01 10:10:10");

ALTER TABLE faizan ADD CONSTRAINT check_salary check (faizan_salary>100);
insert into faizan values ("q1","dd","@bbb","12","2002-01-01 00:00:10");

-- ALTER TABLE <TABLE_ NAME> DROP CONSTRAINT <CONSTRAIT_NAME>;
ALTER TABLE FAIZAN DROP CONSTRAINT CHECK_SALARY;
INSERT INTO faizan VALUES ("SS","DS","100@","-20","2002-01-01 01:01:20"); 
SELECT *FROM FAIZAN;











CREATE TABLE category(
c_id int primary key,
name_ varchar(30 )not null
);
desc category;

CREATE TABLE product (
p_id INT primary KEY,
P_NAME VARCHAR(60) NOT NULL,
P_PRICE INT DEFAULT 0 CHECK (P_PRICE>=0),
C_ID INT,
-- constraint <constraint name > foreign key <column name> reference <where table name><column name>
CONSTRAINT CATEGORY_PRODUCT FOREIGN KEY (C_ID)
REFERENCES CATEGORY (C_ID)
);
select *from category;
select * from product;
 
DESC product;
DESC CATEGORY;
INSERT INTO category values (1,"laptop");
INSERT INTO PRODUCT (P_ID, p_name, p_price,c_id)VALUES (13,"ZARA","1000",1);


--
select (100>89);
select (100>101);
select (100<=77);
select (100<100);
select  (100<=89)  ;
select (-10<10);

-- and (all statement should be true)
select (1000>100 and 55<110 and 33!=1000);
select (100=100 and 22>1);


-- or (atlast one statement needs to be true)
select (100>10 or 100=10);


-- not after select can change the statement if true it can false
select not (0=1 or 100<10);



CREATE TABLE department(
D_id CHAR (20) PRIMARY KEY,
derpartment VARCHAR (100) NOT NULL
);
drop table department;
CREATE TABLE employee (
E_id CHAR(20) PRIMARY KEY,
ename VARCHAR (20) NOT NULL,
city varchar (30),
salary int,
department char (20),
CONSTRAINT EMPLOYEE_DEPARTMENT FOREIGN KEY (department)
REFERENCES department (D_id)
);


INSERT INTO department VALUES ("D1","MARKETING"),
("D2","IT"),
("D3","human resourses");


INSERT INTO employee VALUES ("E1","nikita","mumbai",67000,"D1",23),
("E2","prajakta","pune",80000,"D1",25),
("E3","manisha","banglore",20000,"D2",33),
("E4","nilesh","mumbai",35400,"D3",24),
("E5","monal","pune",34452,"D2",22);
select * from employee;
select * from  department;



-- select <column name,.....> from <table_name>
SELECT e_id from employee;

DESC employee;
select e_id,salary FROM employee;

SELECT e_id as id, salary from employee;
SELECT (18<12) AS submit;
select (100>=10) as submit;
-- -------------------------------------------------------------------------------------------------------
-- WHERE clause
SELECT * FROM employee WHERE e_id="E1"; 
SELECT ename FROM employee WHERE e_id="E1"; 
SELECT department FROM employee WHERE e_id="E1"; 
select * FROM department;
select *from employee;
 select * from employee WHERE city="mumbai";
 
 
select *from employee where salary<50000;
select *from employee where salary<=20000;

SELECT * FROM employee WHERE city="mumbai" AND salary<70000;
SELECT * FROM employee WHERE city ="mumbai" or city="banglore";
SELECT * FROM employee WHERE salary between 20000 and 40000;
SELECT * FROM employee WHERE salary>=20000 and salary<=40000;
SELECT * FROM employee WHERE  department="D1" and salary<20000;
select * from employee where city="pune" and department="d1";
SELECT * FROM employee WHERE e_id IN("E1","E2","E3"); 
SELECT * FROM employee WHERE e_id IN("E1","E2","E3"); 
SELECT * FROM employee WHERE city IN ("mumbai","pune","banglore");
SELECT * FROM employee WHERE salary BETWEEN 33000 AND 50000;
 ALTER TABLE employee ADD COLUMN age INT;
 
-- --------------------------------------------------------------------------------------
-- for update <table_name> SET <column-name and value> where condition
UPDATE employee SET age=0;
UPDATE employee SET age=25 WHERE e_id IN ("E1","E4","E4") ;
UPDATE employee SET age=25  WHERE e_id IN ("E1","E4","E4") ;
UPDATE employee set city="pune" where ename="nikita";
UPDATE employee set city="mumbai" where ename="prajakta";
UPDATE employee set salary="39452" where ename="monal";
UPDATE employee set salary=salary+34352 where ename="monal";
UPDATE employee SET AGE=AGE+20;
UPDATE employee set salary=salary-2000 where department="d1";

UPDATE employee set city=null where e_id IN("E1","E3");
update employee set ename="nikita" where e_id IN ("E1");
update employee set ename="prajakta" where e_id IN ("E2");

-- we we compare null we used <is null>
select * from employee where city is null;
select * from employee where city is  not null;
select * from employee where ename<>"nikita";
select *from employee;
desc employee;
alter table employee modify ename VARCHAR(20);



-- 25-7-2024-----------------------------------------------------------------------
select * from employee WHERE ename LIKE "N%";
 select * from employee WHERE ename LIKE "n%a";
select * from employee WHERE ename not LIKE "m_n%";
 select * from employee WHERE ename LIKE "%n%";
 select * from employee WHERE ename NOT LIKE "m%";
 select * from employee WHERE ename LIKE "%ta";
  select * from employee WHERE city="pune" and ename LIKE "m%";
 select * from employee WHERE ename LIKE "%t_";



-- DELETE FROM <TABLE_NAME> WHERE <CONDITION>;
DELETE FROM employee WHERE e_id="E4"; 
DELETE FROM employee WHERE department="D1" and age<26;
DELETE FROM employee WHERE ename LIKE "%L";
DELETE FROM employee;




-- TRUNCATE TABLE <table-name>;
TRUNCATE TABLE employee;



-- Aggregat functions
-- sum
-- count
-- min
-- max
-- average 



SELECT COUNT(*) FROM employee;
SELECT COUNT(*) AS number_of_employee from department;
SELECT COUNT(*) AS number_of_department from department;
SELECT COUNT(CITY) FROM employee;
SELECT count(DISTINCT department) FROM employee;
SELECT min(salary) from employee;
SELECT min(age) FROM employee;
SELECT max(salary)FROM employee;
SELECT sum(salary) from employee;
SELECT sum(salary*12) from employee;
select * from employee;


-- select avg(column_name) FROM emplyee
select avg(salary) FROM employee;
select avg(age) FROM employee;


-- SELECT DISTINCT city FROM <TABLE_NAME>
 SELECT DISTINCT city FROM employee;
 SELECT count(DISTINCT CITY) FROM employee;
 
 -- to oarganize the data into ascending order (LOW TO HIGH)
 SELECT * FROM EMPLOYEE ORDER BY salary;
SELECT * FROM EMPLOYEE ORDER BY ename ;
 
  -- SELECT * FROM EMPLOYEE ORDER BY salary DESC
  SELECT * FROM EMPLOYEE ORDER BY salary DESC;
   SELECT * FROM EMPLOYEE ORDER BY AGE DESC;
   SELECT * FROM EMPLOYEE ORDER BY ename desc;
   SELECT * FROM employee ORDER BY salary desc,age desc;
select * from employee;



-- 26-7-2024----------------------------------------------------------------------------------

SELECT* FROM employee;
select * from employee ORDER BY salary LIMIT 1;
select * from employee
ORDER BY 
salary desc,
age desc
 limit 2;
SELECT * FROM EMPLOYEE ORDER BY AGE DESC LIMIT 1;
SELECT * FROM EMPLOYEE ORDER BY AGE LIMIT 1;

-- -------------------------------------------------------------------------------------------------

SELECT department, count(ename) from employee
group by department;
select city,count(e_id) from employee 
GROUP BY city having city="mumbia";

SELECT city, SUM(salary),avg(salary),min(salary),max(salary) from employee 
group by city;



-- as is called allias;
select department,
 sum(salary) as sum,
 avg(salary) as avg,
 min(salary) as min,
 max(salary) as max,
 count(e_id) as id
 from employee
group by department;


alter table employee ADD COLUMN gender char(25);
update employee set gender="F";
update employee set gender="M" where e_id="e4";

select gender, count(e_id) as count_of_employees
 from employee
group by gender
HAVING gender="F";

select gender, count(e_id)  from employee 
where salary>50000
group by gender HAVING gender="f";


select department, avg(salary) as average_salary from employee 
group by department having average_salary<"50000";


select department, avg(salary) as lowest_avg_salary 
FROM employee 
group by department
order by lowest_avg_salary desc;

 select department, count(e_id) from employee
group by department 
order by count(e_id)  limit 1;


select department, sum(salary)from employee
group by department
order by sum(salary) limit 1;





SELECT * FROM employee;
