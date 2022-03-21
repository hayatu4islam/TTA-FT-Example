show databases;
use cars
create table cars_details (
car_id int not null,
make varchar (20) not null,
model varchar (20),
reg varchar (20) not null,
primary key (carid),
unique (reg)
);