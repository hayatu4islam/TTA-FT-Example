/* HOME LEARNING TASK
INTRODUCTION TO STRUCTURED QUERY LANGUAGE
*/

-- Create a relational database (2 tables)

CREATE database student_records;
show databases;
use student_records;

create table student_info(
admNo int not null,
pass_word varchar(20) not null,
surname varchar(20) not null,
firstname varchar(20) not null,
nationality varchar(20) not null,
phone int not null,
primary key (admNo)
);
explain student_info;
insert into student_info(admNo, pass_word, surname, firstname, nationality, phone)
values ("121001", "abc123", "Adeyemo","Hayat","Nigerian","01211210121"),
("121002", "hyt234", "AbdulQadir","Mustapha","Nigerian","01219809876"),
("121003", "pqr789", "Ogbonayya","James","Ghanaian","01213458987"),
("121004", "ijk456", "Afolabi","kehinde","Senegalese","01219098765"),
("121005", "awt009", "Peter","John","British","01211210861"),
("121006", "ytr010", "Ahmad","Muhammad","Saudi","01211750121"),
("121007", "def246", "Yusuf","Sharifa","Nigerian","01211002327"),
("121008", "xyz123", "Adam","Bush","American","01212345678"),
("121009", "abc789", "George","Washington","American","01211289191"),
("121010", "pqb357", "Putin","Vladimir","Russian","01211419121"),
("121011", "zxy456", "Volodymyr","Zelenskyy","Ukrainian","01216683528");
select * from student_info;

-- Creation of the second table
create table nextOfKin(
nextOfKin_id int not null,
admNo int not null,
fullname varchar(20) not null,
address varchar(40) not null,
relation varchar(15) not null,
email varchar(25) not null,
primary key (nextOfKin_id),
foreign key (admNo) References student_info(admNo)
);

explain nextOfKin;
alter table nextOfkin
modify address varchar(65) not null;

insert into nextOfKin(nextOfKin_id, admNo, fullname, address, relation, email)
values ("001","121001","AbdurRazzaq Adeyemo","No 5 Kurgwi, Quaan Pan, Plateau State","Father","hayatu@gmail.com"),
("002","121007","Ismail Yusuf","No 15 Dadin Kowa, Kontagora,Niger State","Father","sharifa@yahoo.com"),
("003","121005","Joseph John","No 970 Pershore Road, Birmingham","Brother","j.joseph@outlook.com"),
("004","121011","Joe Biden","1600 Pennsylvania Avenue NW, Washington, DC 20500, United States","Friend","president@whitehouse.gov"),
("005","121010","Xi Jinping","174 Chang'an Avenue, Xicheng District, Beijing","Friend","chinesemission@yahoo.com"),
("006","121008","George Bush","2943 SMU Boulevard, Dallas, TX 75205, United States","Brother"," Info@BushCenter.org");

select * from nextOfKin;

-- Update a record from student_info table
update student_info
set phone = "1210985671"
where admNo = 121002;

-- Update a record from nextOfkin table
update nextOfKin
set fullname="Ismail Yusuf Jezomi"
where nextOfKin_id=2;

-- Delete a record from student_info table
Delete from student_info
where admNo=121002;
select * from student_info;

-- Delete a record from nextOfKin table
Delete from nextOfKin
where admNo = 121005;
select * from nextOfKin;

-- Join tables
select surname, firstname, phone, fullname as NextOfKin_Name
from student_info
inner join nextOfKin
on student_info.admNo = nextOfKin.admNo;

-- Run a simple query (one field/column) searching one table
select fullname from nextOfKin
where admNo=121001;

-- Run a complex query (more than one field/column) to demonstrate the relations between the 2 tables
select firstname, surname, phone, fullname as Next_Of_Kin_Name, email
from student_info, nextOfKin
where student_info.admNo = nextOfKin.admNo AND student_info.nationality="American";

-- Retrieve all your data sorted in ascending order on an appropriate field (one table)
select firstname from student_info
order by firstname;

-- Filter data using comparison operators (one table)
select firstname, surname, nationality from student_info
where nationality="Nigerian";