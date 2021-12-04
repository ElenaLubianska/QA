create table employees (id serial primary key, employee_name varchar (50) not null);
insert into employees (employee_name)
values ('Anna'), ('Inna'), ('Andrey'), ('Boris'), ('Anton'), ('Olga'), ('Ken'), ('Barbie'), ('Rakel'), ('Vasiliy'), ('Demian'), ('Max'), ('Pushok'), 
	('Anna1'), ('Inna1'), ('Andrey1'), ('Boris1'), ('Anton1'), ('Olga1'), ('Ken1'), ('Barbie1'), ('Rakel1'), ('Vasiliy1'), ('Demian1'), ('Max1'), ('Pushok1'),
	('Anna2'), ('Inna2'), ('Andrey2'), ('Boris2'), ('Anton2'), ('Olga2'), ('Ken2'), ('Barbie2'), ('Rakel2'), ('Vasiliy2'), ('Demian2'), ('Max2'), ('Pushok2'),
	('Anna3'), ('Inna3'), ('Andrey3'), ('Boris3'), ('Anton3'), ('Olga3'), ('Ken3'), ('Barbie3'), ('Rakel3'), ('Vasiliy3'), ('Demian3'), ('Max3'), ('Pushok3'),
	('Anna4'), ('Inna4'), ('Andrey4'), ('Boris4'), ('Anton4'), ('Olga4'), ('Ken4'), ('Barbie4'), ('Rakel4'), ('Vasiliy4'), ('Demian4'), ('Max4'), ('Pushok4'),
	('Anna5'), ('Inna5'), ('Andrey5'), ('Boris5'), ('Anton5');
select * from employees


create table salary (id serial primary key,	monthly_salary int not null);
insert into salary (monthly_salary)
values  (1000),	(1200),	(1300),	(1400),	(1500),	(1600),	(1700),	(1800),	(1900),	(2000),	(2100),	(2200),	(2300),	(2400),	(2500);
select * from salary


create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);
insert into employee_salary (employee_id, salary_id)
values (71,1), (21,1), (15,15), (80,5), (25,8), (5,7), (10,2), (90,10), (18,9), (19,12), (3,5), (4,6), (98,8), (40,10), (43,15), (45,15), (22,7), (87,5), (9,13), (13,9),
	(75,12), (92,15), (53,2), (51,3), (50,6), (37,7), (32,5), (33,6), (61,8), (69,10), (105,15), (70,15), (68,5), (100,2), (49,10), (83,3), (28,7), (57,13), (36,8), (7,7);


create table roles (id serial primary key,role_title varchar (50) unique not null);
insert into roles (role_title)
values ('Junior Python developer'), ('Middle Python develope'), ('Senior Python developer'), ('Junior Java developer'),	('Middle Java developer'), ('Senior Java developer'), 
	('Junior JavaScript developer'), ('Middle JavaScript developer'),('Senior JavaScript developer'), ('Junior Manual QA engineer'), ('Middle Manual QA engineer'), 
	('Senior Manual QA engineer'), ('Project Manager'), ('Designer'), ('HR'), ('CEO'), ('Sales manager'), ('Junior Automation QA engineer'), ('Middle Automation QA engineer'),
	('Senior Automation QA engineer');
select * from roles

create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees (id), --íàçâàíèÿ ñòîëáèêà êàêîé áóäåò çàäåéñòâîâàí ïðè ñâÿçè
	foreign key (role_id)
		references roles (id)
);
insert into roles_employee (employee_id, role_id)
values (65,11), (21,2), (15,5), (2,15), (25,8), (5,7), (11,12), (10,1), (8,20), (19,12), (3,15), (4,16), (18,8), (40,19), (43,15), (45,5), (22,17), (17,15), (9,13), (13,19),
	(55,12), (62,1), (53,20), (51,3), (50,6), (37,17), (32,15), (33,16), (61,18), (69,19), (38,20), (70,15), (68,15), (29,12), (49,10), (66,13), (28,17), (57,3), (36,11), (7,17);

	


