create database student_task_manager;

use student_task_manager;

create table students (
student_id int primary key
auto_increment,
first_name varchar(100),
last_name varchar(100),
gender varchar(100),
mobile_number varchar(100),
email varchar(100),
course_name varchar(100),
admission_date date
);

insert into students (
first_name,
last_name,
gender,
mobile_number,
email,
course_name,
admission_date
)
values(
'prashant',
'atigre',
'male',
'6525487845',
'prashant@test.com',
'Python',
curdate()
);
select * from students;
insert into students (
first_name,
last_name,
gender,
mobile_number,
email,
course_name,
admission_date
)
values(
'om',
'shinde',
'male',
'9558425245',
'om@test.com',
'Java',
curdate()
);
insert into students (
first_name,
last_name,
gender,
mobile_number,
email,
course_name,
admission_date
)
values(
'Nishant',
'salavi',
'male',
'9552579728',
'nishant@test.com',
'CSS',
curdate()
);
insert into students (
first_name,
last_name,
gender,
mobile_number,
email,
course_name,
admission_date
)
values(
'uttam',
'shinde',
'male',
'9921365258',
'uttam@test.com',
'HTML',
curdate()
);
insert into students (
first_name,
last_name,
gender,
mobile_number,
email,
course_name,
admission_date
)
values(
'suyog',
'chakravarti',
'male',
'8695824510',
'suyog@test.com',
'MongoDB',
curdate()
);

  drop table students;

  create table attendance
  (
	attendance_id int primary key auto_increment,
    student_id int,
    attendance_status varchar(20),
    attendance_date date,
    foreign key (student_id)
    references students(student_id)
);

show tables;

drop table attendance;

create table tasks
(
	task_id int primary key auto_increment,
    task_name varchar(200),
    task_description text,
    maximum_marks int
);

insert into tasks
(
	task_name,
    task_description,
    maximum_marks
)
values
(
	'Python Assignment',
    'Basic Python Practice',
    100
);

select * from tasks;

insert into tasks
(
	task_name,
    task_description,
    maximum_marks
)
values
(
	'DBMS Assingment',
    'Bsic Table creation',
    100
);

create table student_tasks
(
	student_task_id int primary key auto_increment,
    student_id int,
    task_id int,
    obtained_marks int,
    submission_date date,
    foreign key(student_id)
    references students(student_id),
    foreign key(task_id)
    references tasks(task_id)
);
select * from student_tasks;
show tables;

alter table student_tasks
add column submission_status varchar(50);

describe student_tasks;

alter table student_tasks
add column remarks text;

drop table students;

create table students (
student_id int primary key
auto_increment,
first_name varchar(100),
last_name varchar(100),
gender varchar(100),
mobile_number varchar(100),
email varchar(100),
course_name varchar(100),
admission_date date
);

drop table tasks;

drop table student_tasks;

CREATE TABLE users
(
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(100),
    password VARCHAR(100),
    full_name VARCHAR(200)
);

INSERT INTO users
(
    username,
    password,
    full_name
)
VALUES
(
    'admin',
    'admin123',
    'System Administrator'
);

select * from users;