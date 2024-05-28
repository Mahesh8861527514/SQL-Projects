show databases;

create database saturday;
use saturday;

create table data(name varchar(20), city varchar(20), salary int);


create table student(rollno int, name varchar(20), marks int, grade varchar(20), city varchar(20), primary key(rollno));

show tables;
insert into data values('Ravi','Delhi',35000),
('Suman','Pune',38000),
('Sheetal','Delhi',32000),
('Aman','Bangalore',45000);

select * from data;


create database xyz;
use xyz;
create table data(ID varchar(20),name varchar(20),salary int);
show tables;

insert into data values(1,'Adam',25000),
(2,'Bob',30000),
(3,'Rahul',40000);
select * from data;

create table my_data(id int, name varchar(20),age int,city varchar(20),primary key(id));
insert into my_data values(100,'sunil',32,'Delhi'),
(101,'sneha',39,'pushkar'),
(102,'priya',32,'Gurgaon');
select * from my_data;
select name, city from my_data where id=102;
select name, age from my_data where age=39;

select*from data;
select name, salary from data where salary>=30000;

select distinct city from data;
select * from data where salary>30000 and city='Delhi';
select * from data where salary>30000 or city='Delhi';
select*from data where salary between 30000 and 40000;
select*from data where city not in ("Delhi");

select * from data order by salary asc;
select * from data order by salary desc;

select * from data order by salary desc limit 2;
select max(salary) from data;
select avg(salary) from data;
select sum(salary) from data;
select count(name) from data;

select city from data group by city;
select city, count(name) from data group by city; 

insert into student values (1, 'Alok',80,'B','Pune'),
(2,'Bhasker',75,'C','Delhi'),
(3,'Chirag',92,'A','Kanpur'),
(4,'Deepak',83,'B', 'Hydrabad'),
(5,'Priya',90,'A','Delhi');

select*from student;
select avg(marks)from student;
select max(marks)from student;

select distinct city from student;

select grade, count(rollno) from student group by grade order by grade;
select marks, count(rollno) from student group by marks having max(marks)<80;
select * from student; 

update student set marks=98 where rollno=3;
update student set name='shraddha' where rollno=5;

set sql_safe_updates=0;
delete from student where marks<80;

alter table student add column age int;
select * from student;
update student set age=18 where rollno=1;
update student set age=18 where rollno=5;
update student set age=19 where rollno=3;
update student set age=20 where rollno=4;

alter table student add column demo int;
alter table student drop column demo;

alter table student change city location varchar(20);
alter table student rename to student_data;
select*from student;
select*from student_data;

alter table student_data rename to full_name;
select*from full_name;

delete from full_name where marks<90;
alter table full_name drop column location;

create table student(rollno int, name varchar(20));
insert into student values (1,'Ashish'),
(2,'Kunal'), 
(3, 'Kashish'),
(4,'sapna');
select *from student;
create table course(rollno int, course_name varchar(20));

insert into course values(5,'python'),
(2,'statistics'),
(3,'Scirence'),
(4,'Tableau');
select * from course;

select student.rollno, course.rollno from student inner join course on student.rollno=course.rollno;

select student.*,course.rollno from student left join course on student.rollno=course.rollno;

select course.*,student.rollno from student right join course on student.rollno=course.rollno;

select course.*,student.rollno from student full join course on student.rollno=course.rollno;

show tables;
select *from data;

select name, salary from data where salary>35000;

#Ques: Find names of all students who have age as even number;

show tables;
select* from My_data;

select name,age from my_data where age%2=0;

create view view1 as select name, salary from data; 
select*from view1;

drop view view1;