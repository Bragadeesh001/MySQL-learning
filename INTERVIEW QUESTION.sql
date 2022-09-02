show databases;

create database company;
use company;

# creating employee table
create table employee(
empid int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
salary int not null,
joining_date date not null,
dept varchar(25) not null
);

#adding empid as primary key
alter table employee
add primary key(empid);

#creating bonus table
create table bonus(
empid int not null,
bonus_date date not null,
bonus_amount int not null
);

# creating foreign key for bonus table
alter table bonus
add foreign key(empid) references employee(empid);

#creating designation table
create table designation(
empid int not null,
designation varchar(25) not null,
designation_date date not null
);

#creating foreign key for designation
alter table designation
add foreign key(empid) references employee(empid);



#Giving values to employee table
desc employee;
insert into employee values
(1,'brag','deesh',10000,'1997-07-10','data science'),
(2,'sree','leka',5000,'2001-01-04','java');


#giving values to bonus table
desc bonus;
insert into bonus values
(1, '2022-09-1',2000),
(1, '2022-09-1',2000);

#giving values to designation table
desc designation;
insert into designation values
(1,'junior data scientist','2021-01-01'),
(2,'python developer','2021-01-01');

