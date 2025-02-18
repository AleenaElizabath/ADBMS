create database test1;
use test1;
create table country(country_id int primary key,country_name varchar(25),region_id int,foreign key(region_id) references region(region_id));
create table region(region_id int,region_name varchar(25) not null,primary key(region_id));
select * from nation;
create table jobs(job_id int primary key,job_title varchar(25),min_salary int,max_salary int);
create table employees(emp_id int primary key,first_name varchar(25),last_name varchar(25),email varchar(20),phno int,hire_date date,job_id int,salary int,manager_id int,dept_id int, foreign key(dept_id) references department(dept_id),foreign key(job_id) references jobs(job_id));
create table dependents(dependent_id int primary key,first_name varchar(25),last_name varchar(25),relation varchar(20),emp_id int,foreign key(emp_id) references employees(emp_id));
create table department(dept_id int primary key,dept_name varchar(25),location_id int,foreign key(location_id) references location(location_id));
create table location(location_id int primary key,street_add varchar(25),postal_code int,city varchar(25),state_prov varchar(25),country_id int,foreign key(country_id) references country(country_id));
desc employees;
alter table nation rename to country;
alter table nations add column capital varchar(25);
alter table employees modify phno varchar(100);
alter table location modify country_id varchar(25);
alter table nation drop region_id;
alter table nation drop capital;
insert into country (country_id,country_name,region_id) values (00,"Argentina",2),(01,"Australia",3),(02,"Belgium",1),(03,"Brazil",2),(04,"Canada",2),(05,"Switzerland",1),(06,"China",3),(07,"Germany",1),(08,"Denmark",1),(09,"Eygpt",4),(10,"France",1),(11,"Hongkong",3),(12,"Israel",4),(13,"India",3),(14,"Italy",1),(15,"Japan",3),(16,"Kuwait",4),(17,"Mexico",2),(18,"Nigeria",4),(19,"Netherlands",1),(20,"Singapore",3),(21,"UK",1),(22,"US",2),(23,"Zambia",4),(24,"Zimbabwe",4);
desc jobs;
insert into region (region_id,region_name) values (1,"Europe"),(2,"Americas"),(3,"Asia"),(4,"Middle East and Africa");
select * from department;
select * from location;
select * from country;
select * from jobs;
update region set region_name="India" where region_id=10;
truncate table nation;
drop table location;
desc lo;
insert into jobs(job_id,job_title,min_salary,max_salary) values(7,"Finance Manager",8200.00,16000.00),(8,"Human Resource Representative",4000.00,9000.00),(9,"Programmer",4000.00,10000.00);
insert into location(location_id,street_add,postal_code,city,state_prov,country_id) values(1400,"2014 Jroad",26192,"SouthLake","Texas",22),(1500,"2011 Interiors Blvd",99236,"South San Fransisco","California",22),(1700,"2004 Charade Rd",98199,"Seattle","Washington",22),(1800,"147 Spadina Ave",900,"Toronto","Ontario",04),(2400,"8204 Arthur St",NULL,"London",NULL,21),(2500,"Magdalen Centre",1200,"Oxford","Oxford",21),(2700,"Schwanthalerstr",80925,"Munich","Bavaria",07);
desc employees;
insert into employees(emp_id,first_name,last_name,email,phno,hire_date,job_id, salary,manager_id,dept_id) VALUES (100,'Steven','King',
'steven.king@sqltutorial.org','515.123.4567','1987-06-17',4,24000.00,NULL,9),
(101,'Neena','Kochhar','neena.kochhar@sqltutorial.org','515.123.4568','1989-09-21', 5,17000.00,
100,9), (102,'Lex','DeHaan','lex.de haan@sqltutorial.org','515.123.4569','1993-01-13',5,17000.00,
100,9), (103,'Alexander','Hunold','alexander.hunold@sqltutorial.org','590.423.4567','1990-01-03',9,9000.00,102,6), (104,'Bruce','Ernst','bruce.ernst@sqltutorial.org','590.423.4568','1991-05-21',9,6000.00,103,6), (105,'David','Austin','david.austin@sqltutorial.org','590.423.4569','1997-06-25',9,4800.00,103,6), (106,'Valli','Pataballa','valli.pataballa@sqltutorial.org','590.423.4560','1998-02-05',9,4800.00,103,6), (107,'Diana','Lorentz','diana.lorentz@sqltutorial.org','590.423.5567','1999-02-07',9,4200.00,103,6), (108,'Nancy','Greenberg','nancy.greenberg@sqltutorial.org',
'515.124.4569','1994-08-17',7,12000.00,101,10), (109,'Daniel','Faviet',
'daniel.faviet@sqltutorial.org','515.124.4169','1994-08-16',6,9000.00,108,10),
(110,'John','Chen','john.chen@sqltutorial.org','515.124.4269','1997-09-28',6,8200.00,108,10),
(111,'Ismael','Sciarra','ismael.sciarra@sqltutorial.org','515.124.4369','1997-09-30',6,7700.00,
108,10), (112,'Jose Manuel','Urman','josemanuel.urman@sqltutorial.org','515.124.4469','1998-03-07',6,7800.00,108,10), (113,'Luis','Popp','luis.popp@sqltutorial.org','515.124.4567','1999-12-07',6,6900.00,108,10), (114,'Den','Raphaely','den.raphaely@sqltutorial.org','515.127.4561','1994-12-07',14,11000.00,100,3), (115,'Alexander','Khoo','alexander.khoo@sqltutorial.org','515.127.4562',
'1995-05-18',13,3100.00,114,3), (116,'Shelli','Baida','shelli.baida@sqltutorial.org','515.127.4563',
'1997-12-24',13,2900.00,114,3), (117,'Sigal','Tobias','sigal.tobias@sqltutorial.org','515.127.4564',
'1997-07-24',13,2800.00,114,3), (118,'Guy','Himuro','guy.himuro@sqltutorial.org','515.127.4565',
'1998-11-15',13,2600.00,114,3), (119,'Karen','Colmenares','karen.colmenares@sqltutorial.org',
'515.127.4566',' 1999-08-10',13,2500.00,114,3), (120,'Matthew','Weiss',
'matthew.weiss@sqltutorial.org','650.123.1234','1996-07-18',19,8000.00,100,5), (121,'Adam','Fripp',
'adam.fripp@sqltutorial.org','650.123.2234','1997-04-10',19,8200.00,100,5), (122,'Payam',
'Kaufling','payam.kaufling@sqltutorial.org','650.123.3234','1995-05-01',19,7900.00,100,5),
(123,'Shanta','Vollman','shanta.vollman@sqltutorial.org','650.123.4234','1997-10-10',19,6500.00,100,5), (126,'Irene','Mikkilineni','irene.mikkilineni@sqltutorial.org','650.124.1224','1998-09-28',18,2700.00,120,5), (145,'John','Russell','john.russell@sqltutorial.org',NULL,'1996-10-01',15,14000.00,100,8), (146,'Karen','Partners','karen.partners@sqltutorial.org',NULL,'1997-01-05',15,13500.00,100,8), (176,'Jonathon','Taylor','jonathon.taylor@sqltutorial.org',NULL,'1998-03-24',16,8600.00,100,8), (177,'Jack','Livingston','jack.livingston@sqltutorial.org',NULL,'1998-04-23',16,8400.00,100,8), (178,'Kimberely','Grant','kimberely.grant@sqltutorial.org',NULL,'1999-05-24',16,7000.00,100,8), (179,'Charles','Johnson','charles.johnson@sqltutorial.org',NULL,'2000-01-04',16,6200.00,100,8), (192,'Sarah','Bell','sarah.bell@sqltutorial.org','650.501.1876','1996-02-04',17,4000.00,123,5), (193,'Britney','Everett','britney.everett@sqltutorial.org','650.501.2876','1997-03-03',17,3900.00,123,5), (200,'Jennifer','Whalen','jennifer.whalen@sqltutorial.org',
'515.123.4444','1987-09-17',3,4400.00,101,1), (201,'Michael','Hartstein',
'michael.hartstein@sqltutorial.org','515.123.5555','1996-02-17',10,13000.00,100,2),
(202,'Pat','Fay','pat.fay@sqltutorial.org','603.123.6666','1997-08-17',11,6000.00,201,2),
(203,'Susan','Mavris','susan.mavris@sqltutorial.org','515.123.7777','1994-06-07',8,6500.00,101,4),
(204,'Hermann','Baer','hermann.baer@sqltutorial.org','515.123.8888','1994-06-07',12,10000.00,
101,7), (205,'Shelley','Higgins','shelley.higgins@sqltutorial.org','515.123.8080','1994-06-07',2,
12000.00,101,11), (206,'William','Gietz','william.gietz@sqltutorial.org','515.123.8181','1994-06-07',1,8300.00,205,11);
desc dependents;
insert into dependents(dependent_id,first_name,last_name,relation,emp_id) VALUES
(1,'Penelope','Gietz','Child',206), (2,'Nick','Higgins','Child',205), (3,'Ed','Whalen','Child',200),
(4,'Jennifer','King','Child',100), (5,'Johnny','Kochhar','Child',101), (6,'Bette','De Haan','Child',102),
(7,'Grace','Faviet','Child',109), (8,'Matthew','Chen','Child',110), (9,'Joe','Sciarra','Child',111),
(10,'Christian','Urman','Child',112), (11,'Zero','Popp','Child',113), (12,'Karl','Greenberg','Child',108),
(13,'Uma','Mavris','Child',203), (14,'Vivien','Hunold','Child',103), (15,'Cuba','Ernst','Child',104),
(16,'Fred','Austin','Child',105), (17,'Helen','Pataballa','Child',106), (18,'Dan','Lorentz','Child',107),
(19,'Bob','Hartstein','Child',201), (20,'Lucille','Fay','Child',202), (21,'Kirsten','Baer','Child',204),
(22,'Elvis','Khoo','Child',115), (23,'Sandra','Baida','Child',116), (24,'Cameron','Tobias','Child',117),
(25,'Kevin','Himuro','Child',118), (26,'Rip','Colmenares','Child',119), (27,'Julia','Raphaely',
'Child',114), (28,'Woody','Russell','Child',145), (29,'Alec','Partners','Child',146), (30,'Sandra','Taylor'
,'Child',176);
desc department;
insert into department(dept_id,dept_name,location_id)VALUES
('1','Administration','1700'), ('2','Marketing','1800'), ('3','Purchasing','1700'), ('4','Human Resources',
'2400'), ('5','Shipping','1500'), ('6','IT','1400'), ('7','Public Relations','2700'), ('8','Sales','2500'),
('9','Executive','1700'), ('10','Finance','1700'), (11,'Accounting',1700);
select * from department;
select * from employees;
select country_name from country;
select email,phno from employees;
select * from employees where last_name="Fay";
select hire_date from employees where last_name="Grant" or last_name="Whalen" ;
select * from employees where dept_id=8;
select * from employees order by dept_id desc;
select * from employees where last_name like "K%";
select first_name from employees where year(hire_date) between 1995 and 1997;
select job_title from jobs where max_salary<5000;
select first_name from employees where year(hire_date)=1995;
insert into employees values(207,'Paul','Newton','paulnewton@sqltutorial.org','515.123.32181','1995-01-13',1,4500.00,205,11);
delete from department where dept_name="Shipping";
set sql_safe_updates=0;
insert into department(dept_id,dept_name,location_id) values(40,"Shipping",1400);
select * from department where dept_name="Shipping";
select * from department;
select * from location;
select LOWER(email) from employees as lcase_email;
select first_name from employees where dayofweek(hire_date)=5;


