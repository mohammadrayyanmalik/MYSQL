create database batch_7to9; 
  
use batch_7to9; 
  
CREATE TABLE Students ( 
    StudentID INT PRIMARY KEY, 
    Name VARCHAR(255), 
    DateOfBirth DATE, 
    GradeLevel INT 
); 
  
CREATE TABLE Teachers ( 
    TeacherID INT PRIMARY KEY, 
    Name VARCHAR(255), 
    Subject VARCHAR(255) 
); 
  
CREATE TABLE Courses ( 
    CourseID INT PRIMARY KEY, 
    CourseName VARCHAR(255), 
    TeacherID INT, 
    FOREIGN KEY (TeacherID) REFERENCES Teachers(TeacherID) 
); 
  
CREATE TABLE Enrollments ( 
    EnrollmentID INT PRIMARY KEY, 
    StudentID INT, 
    CourseID INT, 
    EnrollmentDate DATE, 
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID), 
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID) 
); 
  
  
  
INSERT INTO Students (StudentID, Name, DateOfBirth, GradeLevel) VALUES 
    (1, 'Alice Johnson', '2005-03-15', 9), 
    (2, 'Bob Smith', '2004-08-22', 10), 
    (3, 'Charlie Brown', '2006-05-10', 8), 
     (4, 'Van Johnson', '2005-03-15', 9), 
    (5, 'Smith hen', '2004-08-22', 10), 
    (6, ' Brown', '2006-05-10', 8); 
    
    
   
  
INSERT INTO Teachers (TeacherID, Name, Subject) VALUES 
    (1, 'Ms. Davis', 'Math'), 
    (2, 'Mr. Johnson', 'English'), 
    (3, 'Mrs. Smith', 'Science'); 
  
INSERT INTO Courses (CourseID, CourseName, TeacherID) VALUES 
    (101, 'Algebra', 1), 
    (102, 'Literature', 2), 
    (103, 'Biology', 3), 
     (104, 'Geomentry', 1), 
    (105, 'Zoology', 3); 
  
  
INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID, EnrollmentDate) VALUES 
    (1001, 1, 101, '2023-01-15'), 
    (1002, 2, 102, '2023-02-20'), 
    (1003, 3, 103, '2023-03-25'); 
    
    
    
    select avg(gradelevel) from students;
    
    select teacherid,count(*) from courses  group by teacherid;
   
   SELECT t.name,count(c.courseid) FROM teachers t 
   left join courses c 
   on t.teacherid=c.teacherid group by t.name;
   
   SELECT t.name,count(c.courseId) FROM teachers t  
   right join courses c 
   on t.teacherId=c.teacherId group by t.name;


SELECT * FROM TEACHERs T 
LEFT JOIN courses c 
using(teacherid);
create view school_detials as 
 SELECT t.TeacherId,t.name as teachername,c.courseID,s.name,s.dateofBirth FROM students s 
LEFT JOIN enrollments e 
using(studentid)
left join courses c 
using(courseId)
left join teachers t 
using(teacherid);  
   
   select * from school_detials;
  drop view school_detials;
   
   desc teachers;
     select * from students;
    select * from teachers;
     select * from courses;
      select * from enrollments;