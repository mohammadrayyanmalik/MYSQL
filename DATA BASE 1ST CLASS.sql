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


