/* This is a database for 
storing information about students */
/* student database has already been created */ 
use students;
CREATE TABLE personal_info(
firstname varchar(15) NOT NULL,
lastname varchar(15) not null,
gender varchar(6),
age int,
phone_number int,
address varchar(50),
height double,
primary key (phone_number),
unique (phone_number)
);