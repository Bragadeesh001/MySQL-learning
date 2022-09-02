# creating new database
create database students;

#using this database
use students;

# creating a table
create table student_details(first_name varchar(20), age integer, email varchar(20), phn integer);

#showing created table
show tables;

select * from student_details;
insert into student_details(first_name,age,email,phn) values ('braga',25,'braga@gmail',123);

select * from student_details;

show tables


show databases;

create table customer(
id integer auto_increment primary key,
first_name varchar(25),
last_name varchar(25),
slary integer);

show tables;

insert into customer(first_name,last_name,slary) values
('braga','deesh',2000),
('sree','leka', 5000),
('scooby','doo', NULL);

select * from customer;

select * from customer where slary is null;

select * from customer where slary is not null;

update customer set slary=7000 where id=3;

delete from customer where id=3;

select * from customer;

desc customer;

alter table customer add column email varchar(25);
alter table customer add dob year;

select * from customer;

alter table customer modify column email varchar(30);

alter table customer drop column email;

select * from customer;

update customer set dob=2001 where id =1;
update customer set dob=1997 where id =2;

select * from customer;

create table theater(
id int primary key auto_increment,
theater_name varchar(25) not null,
movie varchar(25) not null,
released year not null);

desc theater;

alter table theater 
add constraint movies unique(movie,released);

desc theater;

alter table theater 
drop index movies;

desc theater;

create table grocery(
id int not null auto_increment,
item varchar(25) not null,
price int not null,
constraint ke primary key(id,price));

desc grocery;

alter table grocery
modify price int;

desc grocery;

create table employee(
emp_id int not null,
dept varchar(25) not null,
salary int not null,
check(salary<5000)
);

desc employee;

insert into employee value
(123,'java',6000);

insert into employee value
(123,'java',4000);

select * from employee;

alter table employee
add column city varchar(20) default 'chennai';

select * from employee;

alter table employee
modify city drop default;


alter table employee
alter city drop default;

select * from employee;

insert into employee value
(456,'python',1000,'India');


select * from employee;


insert into employee 
set city='bangalore' where emp_id=456;


alter table employee
modify city='Bangalore' where emp_id=456;


update employee 
set city='Bangalore'
where emp_id=456;

select * from employee;


#CREATING INDEXES
show tables;

create table course(
course_id int auto_increment primary key,
course_name varchar(25) not null,
duration_in_days int not null
);

desc course;

create index domain
on course(course_name);

desc course;

#to drop index

alter table course
drop index domain;

desc course;

alter table course
drop primary key;

## views

create table college(
id int auto_increment primary key,
colg_name varchar(25) not null,
location varchar(25) default 'Chennai'
);

insert into college values
(1,'ucet','Tindivanam');

desc college;

create table colg1_department(
id int auto_increment,
department_name varchar(25) not null,
professor varchar(25) not null,
foreign key(id) references college(id)
);

insert into colg1_department values
(1, 'computer','johnson');

create view dept as
select colg_name,location from college 
inner join colg1_department
using(id);

select * from  dept;

desc colg_department;

drop view dept;


