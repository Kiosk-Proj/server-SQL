use test1;
-- SHOW databases;

drop table if exists studentLogs;
drop table if exists students;

create table students(
studentID int not null unique primary key,

first_name varchar(30),
last_name varchar(30),
grade tinyint,
seniorPrivilage bit default 0,
isIn bit default 1
);



create table studentLogs(
studentID int not null,
date date not null,
time time not null,
foreign key(studentID) references students(studentID),
primary key(studentID, date, time)
);