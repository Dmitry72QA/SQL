SQL_DDL Первая часть.

Таблица employees

	1	Создать таблицу employees - id. serial,  primary key, - employee_name. Varchar(50), not null
	2	Наполнить таблицу employee 70 строками.


	
	
	
	
	
create table employees (
id serial primary key,
employee_name varchar(50) not null
);

insert into employees(employee_name)
values  ('Fima'),('Oleg'),('Ira'),('Artur'),('Sveta'),('Sofa'),('Lena'),('Anny'),('Gleb'),('Brat'),('Pasha'),
		('Pety'),('Nasty'),('Holod'),('Bred'),('Gaga'),('Simpson'),('Bart'),('Cat'),('Dog'),('Hot'),('Igor'),
		('Daniil'),('Vlad'),('Lina'),('Nik'),('Toly'),('Oksi'),('Anyota'),('Som'),('Tinkof'),('Rosa'),('Polo'),
		('Toto'),('Lolo'),('Salma'),('Hostes'),('Put'),('Globa'),('Berkut'),('Im'),('Fedor'),('Kristina'),('Sofia'),('Sister'),
		('Fifa'),('Usarka'),('Fedbak'),('Poster'),('Pateta'),('Wood'),('Good'),('Electro'),('Batman'),
		('Man'),('Men'),('Frik'),('Pig'),('brather'),('Halk'),('hawk'),('Elf'),('Superman'),('Pingvin'),
		('Root'),('Clan'),('Broklen'),('Feeador'),('Manki'),('Ringboy');

	
drop table employees;

select * from employees;

*******************************************************************************************************

Таблица salary

	3	Создать таблицу salary - id. Serial  primary key, - monthly_salary. Int, not null
	4	Наполнить таблицу salary 15 строками: - 1000 - 1100 - 1200 - 1300 - 1400 - 1500 - 1600 - 1700 - 1800 - 1900 - 2000 - 2100 - 2200 - 2300 - 2400 - 2500



	
	
	
create table salary (
id serial primary key,
monthly_salary int not null
);

insert into salary(monthly_salary)
values (1000),(1100),(1200),(1300),(1400),(1500),(1600),(1700),(1800),(1900),(2000),(2100),(2200),(2300),(2400),(2500);


--alter table salary
--alter column monthly_salary type Varchar(30) using monthly_salary::Varchar(30);

drop table salary;

select * from salary;

*******************************************************************************************************

Таблица employee_salary

	5	Создать таблицу employee_salary - id. Serial  primary key, - employee_id. Int, not null, unique
- salary_id. Int, not null
	6	Наполнить таблицу employee_salary 40 строками: - в 10 строк из 40 вставить несуществующие employee_id

id
employee_id
salary_id









create table employee_salary (
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

insert into employee_salary(employee_id, salary_id)
values (2,8), (99,10), (5,12), (77,14), (39,16), (3,18), (4,20), (6,22), (10,24), (98,26),
		(64,28), (14,30), (81,32),(18,34), (44,36), (22,38), (71,40), (26,1), (28,3), (30,5),
		(32,7), (65,9), (36,11),(38,13), (40,15), (94,17), (75,19), (85,21),(11,23), (9,25),
	   (55,27), (13,29), (15,31),(52,33), (72,35), (88,37), (23,39), (25,6),(27,2), (29,3);
	  	  
drop table employee_salary;

select * from employee_salary;

*******************************************************************************************************

Таблица roles

	7	Создать таблицу roles - id. Serial  primary key, - role_name. int, not null, unique
	8	Поменять тип столба role_name с int на varchar(30)
	9	Наполнить таблицу roles 20 строками:

id
role_name






create table roles (
id serial primary key,
role_name int not null unique
);
 
alter table roles
add column rolen_name int;

alter table roles
alter column role_name type Varchar(30) using role_name::Varchar(30);


insert into roles(role_name)
values ('Junior Python developer'), ('Middle Python developer'), ('Senior Python developer'), ('JUnior Java developer'), ('Middle Java developer'),
('Senior Java developer'), ('Junior JavaScript developer'), ('Middle JavaScript developer'), ('Senior JavaScript developer'), ('Junior Manual QA ingineer'),
('Middle Manual QA engineer'), ('Senior Manual QA engineer'), ('Project Manager'), ('Designer'), ('HR'), ('CEO'), ('sales manager'), ('Junior Authomation QA engineer'), ('Middle Authomation QA engineer'),
('Senior Authomation QA engineer');

drop table roles;

select * from roles;


*******************************************************************************************************

Таблица roles_employee

	10	Создать таблицу roles_employee - id. Serial  primary key, - employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
	11	Наполнить таблицу roles_employee 40 строками:

id
employee_id
role_id




create table roles_employee(
id serial primary key,
employee_id int not null,
role_id int not null,

foreign key (employee_id)
	references employees(id),

foreign key (role_id)
	references roles(id)
);

insert into roles_employee(employee_id, role_id)
values	(27,7), (22,9), (36,1),(38,2), (40,3), (9,8), (20,19), (32,20),(11,18), (9,11),
	    (21,5), (13,6), (15,10),(29,13), (33,12), (10,15), (23,14), (25,16),(27,12), (29,13),
		(2,19), (17,7), (5,15), (11,11), (39,3), (3,9), (4,14), (6,16), (10,17), (11,1),
		(36,9), (14,18), (31,2),(18,3), (5,3), (22,1), (36,17), (26,20), (28,11), (30,7);

drop table roles_employee;
	
select * from roles_employee;

*******************************************************************************************************

