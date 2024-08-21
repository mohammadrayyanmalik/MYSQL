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


-- 23-7-2024-------------------------------------------------------------------------------------------
CREATE TABLE department(
D_id CHAR (20) PRIMARY KEY,
derpartment VARCHAR (100) NOT NULL
);
CREATE TABLE employee (
E_id CHAR(20) PRIMARY KEY,
ename VARCHAR (20) NOT NULL,
city varchar (30),
salary int,
department char (20),
age int,
CONSTRAINT EMPLOYEE_DEPARTMENT FOREIGN KEY (department)
REFERENCES department (D_id)
);
drop table employee;
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
desc employee;
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
order by count(e_id) limit 1 ;



select department, sum(salary)from employee
group by department
order by sum(salary) limit 1;


-- 29-7-2024 ---------------------------------------------------------------------------------------------

-- built in function
-- concat ("hello","world");
select concat("mohammad"," ","Rayyan");
select ename,city,concat(ename,"-",city) as combination from employee;
select ename,e_id,concat(e_id,".",ename,"@itvedant.com") as email 
from employee;

-- UPPER ("sql") SQL
SELECT UPPER("abc");
SELECT LOWER("QAS");

INSERT INTO employee VALUES ("E7","ANKITA",upper("mumbai"),20000,"d1",12,lower("f"));


-- length
SELECT length("HELLO     ");
select length("nisha")>4;

select substr("hello",2,4);
select substr("hello",2,2);
SELECT substr("NIKITA",length("NIKITA"),1);
SELECT substr("ename",length("ename"),1) from employee;
select upper( substr(ename,length(ename),1)) from employee ;
select concat(ename,"-",upper( substr(ename,length(ename),1))) from employee;

select concat(upper( substr(ename,1,1)),
substr(ename,2,length(ename)-1))from employee;


select concat(upper(substr(ename,1,1)),
substr(ename,2,length(ename)-2),
upper(substr(ename,length(ename),1))) 
 from employee;


-- 30-7-2024-----------------------------------------------------------------------
-- mod(modulus) it defines remender on devide
-- round (it round the figure after point)
-- CEIL it round the main figure i high number
-- FLOOR IT also rouun the figure in less number
-- sqrt it give squre root
-- sign it give + and - value with only no. (1)
-- truncate cut number that give values
-- pow it gite squre type multiplication
-- "now" give both date and time yyyy-mm-dd hh:m:ss (format)
-- date give only date part in now part

select mod(101,3);
select round(8.326,1);
select ceil(10.1);
select floor(20000.155555);
select round(sqrt(17),4);
select sign(-40);
select truncate(sqrt(53),3);
select pow(50,2); 
-- -----------------------------------------------------------
-- practice 
select ceil(avg(salary)) as average_salary from employee;

-- date related function
-- yyyy-mm-dd (format)
select curdate();

-- hh:mm:ss (format)
select current_time();
-- "now" give both date and time yyyy-mm-dd hh:m:ss (format)
-- date give only date part in now part
select  date(now());

-- day give only date part
select day(now());

-- month give only monyh part
select month(now());

-- year give only year part
select year(now());

ALTER TABLE employee ADD COLUMN joining_date date;
update employee set joining_date="2015-10-08" where e_id="e1";
update employee set joining_date="2015-09-08" where e_id="e2";
update employee set joining_date="2012-10-08" where e_id="e4";

select joining_date from employee where year(joining_date)=2015;
select * from employee where year(joining_date)=2015 or
year(joining_date)=2020;

select year(joining_date) as joining_date, count(e_id) from employee
group by year(joining_date) having (joining_date)=2012;

-- ----------------------------------------------------- ---------------------------------------

select date_format("2020-10-10","%d-%m-%y");
select date_format("2020-10-10","%D-%M-%Y");

-- %w is a week number 0=SUNDAY 1=MONDAY
select date_format("2020-10-10","%d-%m-%y %w");
select date_format("2020-10-10","%D-%M-%Y %W");
 
 -- %c define only single digit month like if yo want august it represent 8 only excepy of 08
SELECT DATE_FORMAT(NOW(),"%D-%c-%Y %h:%i:%s");

-- %r define the hh:mm:ss toghether



-- 31-7-2024----------------------------------------------------------------------------------
SELECT ename,e_id,salary,
CASE 
WHEN SALARY<30000 THEN "very less"
WHEN SALARY<60000 THEN "AVERAGE"
WHEN salary>60000 THEN "HIGH"
ELSE "-"
END AS SALARY_DATA,
CASE 
WHEN department="D1" THEN "MARKETING"
WHEN department="D2" THEN "IT"
WHEN department="D3" THEN "HR"
ELSE "-"
END AS EMPLOYEE_DETIALS,CITY
FROM employee;

SELECt ename,e_id,salary,department,
CASE 
WHEN department="D1" THEN "MARKETING"
WHEN department="D2" THEN "IT"
WHEN department="D3" THEN "HR"
ELSE "-"
END AS EMPLOYEE_DETIALS,CITY
FROM EMPLOYEE;

UPDATE employee SET salary=
CASE
WHEN department="D1" THEN SALARY+2000
WHEN department="D2" THEN SALARY+1000
WHEN department="D3" THEN SALARY+2500
ELSE "salary"
END;

alter table employee add column email varchar(90);

update employee set email=
concat(substr(city,1,1),".", upper(ename),"_",lower(e_id),"@itvedant.com");


-- coalesce
alter table employee add column phone_no bigint;
update employee set phone_no=63001400,email=null where e_id in("e1","e3","e4");

SELECT ENAME,email,phone_no,COALESCE(email,phone_no) from employee;


-- 01-08-2024 --------------------------------------------------------------------------------
-- (IS NULL) check its null or not
select isnull("AMIT");


-- DATEDIFF define the difference date gap in number 
SELECT datediff(curdate(),"2001-08-01");

select ename,joining_date,datediff(curdate(),joining_date) 
from employee
 where datediff(curdate(),
 joining_date)>(365*8) ;



-- DATE-ADD 
select date_add(curdate(),interval 84 day);
select date_add(curdate(),interval -1 year);
select date_add(curdate(),interval 10 year);


-- CLASS TASK
select ename,joining_date,date_add(joining_date,interval 1 year) as work_annivarsry
from employee;

select *,
date_add(joining_date,interval 1 year) as work_annivarsry
from employee;

-- ----------------------------------------------------------------------------------
UPDATE employee SET department=null where e_id="e5";
insert into department values("d4","operation");

-- INNER JOIN
SELECT * FROM employee
inner join department
on employee.department=department.d_id;

select * from employee e 
inner join department d
on e.department=d.d_id;

select e.ename,e.e_id,e.city,d.department from employee e 
inner join department d
on e.department=d.d_id;

show tables;
desc department;

 ALTER TABLE department change derpartment department varchar(100);
 
 
 -- 02-08-2024 ------------------------------------------------------------------------------------------------------
 
-- left join 
SELECT * from employee e
left join  department d
on e.department=d.D_id
where salary<=50000
order by e.salary desc;




-- right join 
select * from employee e 
right join department d 
on e.department=d.D_id
where city="mumbai"
group by e.department
order by salary ;









-- inner join 
select * from employee e
inner join department d
on e.department=d.d_id;
 
 
 select * from employee e
right join department d
on e.department=d.d_id
where e.e_id is null;


select d.d_id, count(e.e_id) AS no_of_employee from employee e
right join department d
on e.department=d.d_id
GROUP BY d.d_id
HAVING no_of_employee=0 ;


-- CROSS JOIN(define the multiplicatin with second table)
SELECT * FROM employee e,department d
where e.department=d.D_id;


SELECT * FROM employee e,department d
where e.department=d.D_id AND E.DEPARTMENT="D1";

create table department_2(
d_id char(20) primary key,
department VARCHAR(100),
city varchar(100)
);

insert into department_2
VALUES ("D1","MARKETING","MUMBAI"),
("D6","PHAMASICT","BASTI");

-- union does not show thw distint data 
-- (union have rule to match the no. of column that search)
-- (union have rule to  sequence should match)
SELECT D_id,department from department 
 union
SELECT D_id,department from department_2;

-- union all show all duplicate data also
SELECT D_id,department from department 
 union all
SELECT D_id,department from department_2;

-- 05-08-2024-----------------------------------------------------------------------------------------------

-- UNION 
SELECT D_ID,department FROM department
UNION 
SELECT D_ID,department FROM department_2;

-- fuller join (combination of both left and right)
SELECT * FROM EMPLOYEE e 
left join department d 
ON E.department=d.d_id
union
SELECT * FROM EMPLOYEE e 
right join department d 
ON E.department=d.d_id;


SELECT * FROM employee e 
right join department d
ON E.department=D.D_ID
UNION
SELECT * FROM employee e 
LEFT join department d
ON E.department=D.D_ID;



-- CROSS JOIN(define the multiplicatin with second table
-- CROSS JOIN ALWAYS WANTS = SO IT IS CALLED AS EQUI JOIN
-- EQUI JOIN
SELECT * FROM employee e,department d
where e.department=d.D_id;

--  NON EQUI JOIN 

SELECT * FROM EMPLOYEE E, department D 
WHERE E.department=D.D_ID AND AGE>22;


-- SUBQUERIES

SELECT MIN(SALARY) FROM EMPLOYEE;
SELECT * FROM EMPLOYEE WHERE SALARY=( SELECT MIN(SALARY) FROM EMPLOYEE);
SELECT * FROM EMPLOYEE WHERE SALARY=(SELECT max(SALARY) FROM employee);
select * from employee order by salary desc limit 1;
select * from employee where salary<82000 order by salary desc limit 1;


SELECT* from employee where salary<(select avg(salary) from employee);
select * from employee where salary<(select max(salary) from employee) order by salary desc limit 1;

select d_id from department where department="marketing";
select * from employee where department=(select d_id from department where department="marketing");


 alter table department add column city varchar(100);
update department set city="mumbai" where d_id="d1";
update department set city="chennai" where d_id="d2";
update department set city="mumbai" where d_id="d3";
update department set city="lucknow" where d_id="d4";

select d_id from department where city="mumbai";
select * from employee where department in (select d_id from department where city="mumbai");



-- <13000 50000>   >all       70000      always check greater number in case of >all
-- <13000 50000>   >any       70000      always check less number in case of >any
-- <13000 50000>   <all       70000      always check less number in case of <all
-- <13000 50000>   <all       70000      always check greater number in case of <any





SELECT * FROM department_2;
SELECT * FROM employee;
SELECT * FROM department;
 
 -- 07-08-2024-- --------------------------------------------------------------------------------------
 
 -- views 
 -- to see a particular thing with out writting a query again
 -- to hide peivary
 
 --  IF VIEW QUERY INVOLVE IN 1 TABLE CALLED SIMPLE VIEW
 -- IF VIEW QUERY INVOLVE MORE THAN 1 table CALLED COMPLEX VIEW
 
 
 
 
 CREATE VIEW department_salary as
SELECT department,sum(salary) FROM employee GROUP BY department;
 
 select * from department_salary;
 
 
 create view emp as
 SELECT e_id,ename,city,department,age,joining_date from employee;
 
 select * from emp;
 
 CREATE VIEW JOIN_RIGHT AS
 SELECT e.e_id,e.ename,e.city,e.department,e.age,e.joining_date from employee e 
 LEFT JOIN DEPARTMENT d 
 ON E.DEPARTMENT=D.D_ID;
 
 
 DROP VIEW emp;
 
 
 
SELECT * FROM department_2;
SELECT * FROM employee;
SELECT * FROM department;
 


-- 09-08-2024-------------------------------------------------------
-- Delimiter it is used to change the end like; TO ANY SYMBOL
delimiter @
select * from employee@
SELECT * FROM DEPARTMENT@
-- -------------------------------------------------------------------------------------------------

-- stored
-- in, out, inout
/*
delimiter $
create procedure procedure_name()
begin 
<query>
END$
delimiter ;
*/

-- non parameterized BECAUSE () HAS NOTHING
delimiter $
 CREATE PROCEDURE getEmployee()
 BEGIN
	SELECT * FROM EMPLOYEE;
 
 END$
DELIMITER ;
CALL GETEMPLOYEE;


DELIMITER $
CREATE PROCEDURE GETDEPARTMENT()
BEGIN 
 select * from department where d_id="d1";
END$
DELIMITER ;

CALL GETDEPARTMENT;



DELIMITER $
CREATE PROCEDURE get_salary(in salary int)
BEGIN 
	SELECT count(*) FROM employee where employee.salary= salary;
	
END$
delimiter ;

call get_salary(82000);
drop procedure get_salary;


DELIMITER $
CREATE PROCEDURE get_department(in department char(20) )
BEGIN 
	SELECT * FROM employee where employee.department= department;
	
END$
delimiter ;
call get_department("d2"); 
-- arguments
 call getemployee;
 
 DELIMITER $
CREATE PROCEDURE update_phoneno(in E_id char(20),in phone_no bigint )
BEGIN 
	update employee set employee.phone_no=phone_no where employee.e_id=e_id ;
	
END$
delimiter ;

call update_phoneno ("e1",21656);
 drop procedure update_phoneno;
 
desc employee;
select * from employee;

call getemployee	;
delimiter $
CREATE procedure getage(in age int )
begin
update employee set employee.age=age where e_id="e1";
end$
delimiter ;
call getage (26);


DROP PROCEDURE getage;

DELIMITER $
CREATE procedure GETEAGE()
BEGIN
	SELECT * FROM EMPLOYEE WHERE E_ID="E1";
END$
DELIMITER ;
CALL GETEAGE;                                                                 
-- 12-08-2024--------------------------------------------------------------------------------
-- VERIABLE
SET @phone_no=123654;

SELECT * FROM EMPLOYEE where phone_no<@phone_no;


SET @SALARY=50000;
SELECT * FROM EMPLOYEE WHERE SALARY<@SALARY;

-- ----------------------------------------------------------------------------------------
DELIMITER $
CREATE PROCEDURE GETYEAR(IN e_id CHAR(4), OUT REG_YEAR INT)
BEGIN
SELECT YEAR (JOINING_DATE) INTO REG_YEAR FROM EMPLOYEE WHERE EMPLOYEE.E_ID=E_ID;
END$
DELIMITER ;
DROP PROCEDURE GETYEAR;
CALL GETYEAR("E2",@REG_YEAR);
SELECT @REG_YEAR;
SELECT * FROM EMPLOYEE WHERE YEAR(JOINING_DATE)=@REG_YEAR;


-- - ----------------------------------------------------------------------------
DELIMITER $

CREATE PROCEDURE GET_AGE(IN E_ID CHAR (5),OUT REG_AGE INT)
BEGIN 
--    COLUNM NAME        VERIABLE     TABLE_NAME      COLUMN NAME= VERIABLE
SELECT EMPLOYEE.AGE INTO REG_AGE FROM EMPLOYEE WHERE EMPLOYEE.E_ID=E_ID;
END$
DELIMITER ;
 CALL GET_AGE ("E2",@REG_AGE);
 SELECT @REG_AGE;
select * from employee;
UPDATE EMPLOYEE SET JOINING_DATE="2015-10-08" WHERE E_ID="E2";



-- -------------------------------------------------------------
DELIMITER $
CREATE PROCEDURE GETYAR(IN e_id CHAR(4), OUT REG_YAR DATE)
BEGIN
          SELECT JOINING_DATE INTO REG_YAR FROM EMPLOYEE WHERE EMPLOYEE.E_ID=e_id;
END$
DELIMITER ;
CALL GETYAR("E1",@REG_YAR);
SELECT @REG_YAR;
DROP procedure GETYAR;
SELECT * FROM EMPLOYEE;

SELECT JOINING_DATE FROM EMPLOYEE WHERE EMPLOYEE.E_ID="E1";
-- ----------------------------------------------------
	DELIMITER $
 CREATE PROCEDURE GETEMP1( IN JOINING DATE)
 BEGIN
	SELECT EMPLOYEE.E_ID  FROM EMPLOYEE WHERE YEAR(JOINING_DATE)=YEAR(JOINING);  
 
 END$
 DELIMITER ;
  DROP PROCEDURE GETEMP1;
 CALL GETEMP1("2015-10-08");
SELECT @E_ID;
SELECT * FROM EMPLOYEE;


-- 14-08-2024 ----------------------------------------------------------------------------------
-- in out inout 

delimiter $
CREATE PROCEDURE update_AGE(in e_id char(10),inout age int)
begin
DECLARE OLD_AGE INT;
select employee.salary INTO OLD_AGE from employee where employee.e_id=e_id;
UPDATE employee SET employee.AGE=AGE where employee.e_id=e_id;
SET AGE=OLD_AGE;
end$
DELIMITER ;
DROP PROCEDURE UPDATE_SALARY;
SET @AGE=50;
CALL UPDATE_AGE ("E1",@AGE);
SELECT @AGE;
SELECT * FROM EMPLOYEE;


-- SYNTEX
/* DELIMITER $
CREATE FUNCTION fun_name(p1,p2,......)
RETURN DATATYPE
BEGIN
// LOGIC
RETURN VALUE
END $
DELIMITER ; */


DELIMITER $
CREATE FUNCTION addition(a int, b int)
returns int
begin
return a+b;
end$
delimiter ;
select addition (510,200);
-- --------------------------------------------------------------------
delimiter $
CREATE FUNCTION subs(a int,b int)
returns int 
begin
return a-b;
end$
delimiter ;
select subs(222,22);

-- ----------------------------------------------------------------------
select concat(upper(substr("hello",1,1)),
 lower(substr("hello",2)));

delimiter $
create function formatename(hello varchar(100))
returns varchar (100)
begin 
 return  concat(upper(substr(hello,1,1)),lower(substr(hello,2)));
end$
delimiter ;
select* from employee;
select formatename(ename),formatename(city),addition(salary,10000) from employee;
-- ----------------------------------------------------------

DELIMITER $
CREATE function grade(marks int)
RETURNS CHAR (20)
BEGIN
DECLARE grade char(20);
SET grade=case
			WHEN marks BETWEEN 0 AND 40 THEN "C"
            WHEN marks BETWEEN 41 AND 74 THEN "B"
            WHEN marks BETWEEN 75 AND 100 THEN "A"
            ELSE "INVALID SALARY"
            END;
            RETURN GRADE;
END$
DELIMITER ;
SELECT GRADE(100);

-- 16-08-2024 --------------------------------------------------------------------------
-- IF  syntex
/* 
IF condition THEN statement
end IF;
IF condition 
THEN statement1
ELSE STATEMENT2
END IF */
DELIMITER $
 CREATE FUNCTION checkno(n int)
 returns varchar(4)
 begin
	IF (n%2=0) THEN
    RETURN "even";
    ELSE 
    return "odd";
    end if;
 end$
delimiter ;
select checkno(21);

-- check age
DELIMITER $
CREATE FUNCTION CHECKAGE(A INT)
RETURNS boolean
BEGIN
	IF  (A>18) THEN 
    RETURN TRUE;
    ELSE RETURN FALSE;
    END IF;
   
END$
DELIMITER ;
DROP FUNCTION CHECKAGE;
SELECT CHECKAGE(19);
-- ----------------------------------------------------------------------------------
-- ELSE IF 
-- WE ARE WRITING THERE MULTPLE STATEMENT 
-- SYNTEX OF IFELSE
/*
IF condition THEN statement1
ELSE IF condition THEN statement2
ELSE IF condition THEN statement3
 
 ELSE STATEMENT IF ITS ALL NOT APPLLY
 END IF;*/
 
 -- 1. ENGLISH  2. HINDI   3. ARABIC
 DELIMITER $
CREATE FUNCTION selectlanguage(choice int)
RETURNS VARCHAR(20)
BEGIN 
		IF (choice=1) then 
        return "english";
        ELSEIF (choice=2) then 
        RETURN "arabic";
        ELSEIF (choice=3) THEN
        RETURN "HINDI";
        
        ELSE  RETURN "INVALID NO";
        
        END IF;
END$ 
 DELIMITER ;
SELECT SELECTLANGUAGE(2);

DELIMITER $
 CREATE FUNCTION DAYS( CHOICE INT)
 RETURNS VARCHAR(20)
 BEGIN 
	IF (choice=1) THEN 
    RETURN "monday";
    ELSEIF (choice=2) THEN 
    RETURN "tuesday";
    ELSEIF (choice=3) THEN 
    RETURN "WEDNESDAY";
ELSEIF (choice=4) THEN 
    RETURN "THURSDAY";
    ELSEIF (choice=5) THEN 
    RETURN "FRIDAY";
    ELSEIF (choice=6) THEN 
    RETURN "SATURDAY";
	ELSEIF (choice=7) THEN 
    RETURN "SUNDAY";
   
   ELSE RETURN"INVALIDNO";
    END IF;
 END$
DELIMITER ;
SELECT DAYS(1);
-- 19-08-2024 ------------------------------------------------------------------------------------
/*
 SYNTEX
 LABELNAME: LOOP
 IF CONITION THEN STATEMENT(LEAVE LABELNAME);
 END IF;
 END LOOP LABELNAME;
 */
 DELIMITER $
 CREATE PROCEDURE loopexample()
 BEGIN
	DECLARE i int;
    SET i=1;
    simpleloop: LOOP
    IF i=6 THEN LEAVE simpleloop;
	END IF;
    SELECT "Hello";
    set i=i+1;
    END LOOP SIMPLELOOP;
 END$
 DELIMITER ;
 CALL loopexample();
 
  DELIMITER $
 CREATE PROCEDURE print1to5()
 BEGIN
	DECLARE i int;
    SET i=1;
    simpleloop: LOOP
      
    IF i=6 THEN LEAVE simpleloop;
	END IF;
    SELECT i;
    set i=i+1;
    END LOOP SIMPLELOOP;
 END$
 DELIMITER ;
 CALL print1to5();
 drop procedure print1to5;
 -- ----------------------------------------------------------
 CREATE TABLE emp(
 emp_id varchar(10)
 );
	
 delimiter $
 CREATE PROCEDURE LOOPEMP()
 BEGIN
	DECLARE i int;
    SET i=1;
    simloop:loop
    IF i=11 THEN LEAVE simloop;
    END IF;
    INSERT INTO  EMP VALUES (concat("emp",i));
     SET i=i+1;
    END LOOP simloop;
 END$
 DELIMITER ;
 call loopemp();
 select * from emp;

 -- 20-08-2024---------------------------------------------------------------------------
 /* 
 syntex of while loop
  labelname: WHILE
  condition DO
  //STATEMENT 
  END WHILE LABENMAEE;*/
  DELIMITER $
  CREATE PROCEDURE WHILELOOPEXAMPLE()
  BEGIN
			DECLARE i int;
            SET i=11;
            WHILELOOP: WHILE 
            I<=20 DO 
            SELECT concat("HELLO",i) ;
            SET I=I+1;
            END WHILE WHILELOOP;
  END$
	DELIMITER ;
    CALL WHILELOOPEXAMPLE();
    
    DROP PROCEDURE WHILELOOPEXAMPLE;
 -- ------------------------------------------------------------------------------------
	  DELIMITER $
  CREATE PROCEDURE WHILELOOPEXAMPLE()
  BEGIN
			DECLARE i int;
            SET i=0;
            WHILELOOP: WHILE 
            I<=50 DO 
            if i%2=0 THEN 
            SELECT concat("HELLO",i) ;
            END IF;
            SET I=I+1;
            END WHILE WHILELOOP;
  END$
	DELIMITER ;
    CALL WHILELOOPEXAMPLE();
DROP PROCEDURE WHILELOOPEXAMPLE;
desc emp;
-- --------------------------------------------------------------
alter table emp modify emp_id char (10) not null; 
insert into emp values (null);
show tables;
alter table emp add primary key (emp_id);
-- ------------------------------------------------------
-- exeption 
-- IT DISTURB NORMAL FLOW OF CODE
DELIMITER $
CREATE PROCEDURE exceptionhand(in s_id INT)
BEGIN
		DECLARE continue HANDLER FOR 1048
        BEGIN
				SELECT "YOU CAN NOT PUT THE NULL VALUE";
        END;
        DECLARE continue HANDLER FOR 1062
        BEGIN
				SELECT "YOU CAN NOT PUT THE NULL VALUE";
        END;
		INSERT INTO EMP VALUES(S_ID);
        SELECT "CODE AFTER INSERTION";
END$
DELIMITER ;
CALL exceptionhand(100);
DROP PROCEDURE exceptionhand;
-- 21-08-2024--------------------------------------------------------------------



-- ---------------------------------------------------------------

-- https://8weeksqlchallenge.com/case-study-1/
-- boleaon
