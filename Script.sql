
--Создать таблицу employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null
--Наполнить таблицу employee 70 строками.

create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

insert into employees(employee_name)
values ('Anya'),
	   ('Ala'),
	   ('Angelina'),
	   ('Andrey'),
	   ('Artur'),
	   ('Boris'),
	   ('Bogdan'),
	   ('Denis'),
	   ('Dasha'),
	   ('Diana'),
	   ('Dima'),
	   ('Jenya'),
	   ('Jora'),
	   ('Gena'),
	   ('Grisha'),
	   ('Gosha'),
	   ('Vova'),
	   ('Vita'),
	   ('Vitalina'),
	   ('Vanya'),
	   ('Vitaliy'),
	   ('Victor'),
	   ('Valya'),
	   ('Valentin'),
	   ('Valentina'),
	   ('Vasya'),
	   ('Zina'),
	   ('Sonya'),
	   ('Stepan'),
	   ('Dron'),
	   ('Vovan'),
	   ('Maks'),
	   ('Mark'),
	   ('Misha'),
	   ('Arina'),
	   ('Marina'),
	   ('Nata'),
	   ('Ruslan'),
	   ('Ruslana'),
	   ('Rasita'),
	   ('Egor'),
	   ('Evgeniya'),
	   ('Anton'),
	   ('Alisa'),
	   ('Vityan'),
	   ('Karen'),
	   ('Tina'),
	   ('Mila'),
	   ('Milana'),
	   ('Sveta'),
	   ('Svetlana'),
	   ('Kristina'),
	   ('Sergey'),
	   ('Oleg'),
	   ('Olya'),
	   ('Pasha'),
	   ('Pavel'),
	   ('Slavik'),
	   ('Valet'),
	   ('Stas'),
	   ('Kolya'),
	   ('Nikolay'),
	   ('Sara'),
	   ('Mangol'),
	   ('Silva'),
	   ('Timoha'),
	   ('Adriana'),
	   ('Karolina'),
	   ('Danya'),
	   ('Yana');
	  
--Создать таблицу salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null
--Наполнить таблицу salary 15 строками:
--- 1000
--- 1100
--- 1200
--- 1300
--- 1400
--- 1500
--- 1600
--- 1700
--- 1800
--- 1900
--- 2000
--- 2100
--- 2200
--- 2300
--- 2400
--- 2500

create table salary(
	id serial primary key,
	monthly_salary int not null
);

insert into salary(monthly_salary)
values (1100),
	   (1200),
	   (1300),
	   (1400),
	   (1500),
	   (1600),
	   (1700),
	   (1800),
	   (1900),
	   (2000),
	   (2100),
	   (2200),
	   (2300),
	   (2400),
	   (2500);
	  
--Создать таблицу employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null
--Наполнить таблицу employee_salary 40 строками:
--- в 10 строк из 40 вставить несуществующие employee_id


create table employee_salary(
	id serial primary key,
	employee_id int unique not null,
	salary_id int not null
);

insert into employee_salary(employee_salary, salary_id )
values (26, 2),
	   (28, 4),
	   (2, 7),
	   (5, 1),
	   (6, 3),
	   (8, 5),
	   (4, 10),
	   (9, 12),
	   (7, 15),
	   (3, 11),
	   (10, 9),
	   (1, 14),
	   (12, 10),
	   (11, 6),
	   (29, 8),
	   (15, 3),
	   (14, 15),
	   (20, 10),
	   (27, 9),
	   (30, 7),
	   (25, 1),
	   (21, 6),
	   (19, 5),
	   (17, 2),
	   (13, 7),
	   (22, 11),
	   (23, 9),
	   (24, 4),
	   (16, 7),
	   (18, 14),
	   (71, 12),
	   (72, 8),
	   (73, 10),
	   (74, 11),
	   (75, 9),
	   (76, 7),
	   (77, 3),
	   (78, 1),
	   (79, 4),
	   (80, 5);
	  
--Создать таблицу roles
--- id. Serial  primary key,
--- role_name. int, not null, unique
--Поменять тип столба role_name с int на varchar(30)
--Наполнить таблицу roles 20 строками:
	  
create table roles(
	id serial primary key,
	role_name varchar(30) unique not null
);

insert into roles(role_name)
values ('Junior Python developer'),
	   ('Middle  Python developer'),
	   ('Senior  Python developer'),
	   ('Junior Java developer'),
	   ('Middle Java developer'),
	   ('Senior Java developer'),
	   ('Junior JavaScript developer'),
	   ('Middle JavaScript developer'),
	   ('Senior JavaScript developer'),
	   ('Junior Manual QA engineer'),
	   ('Middle Manual QA engineer'),
	   ('Senior Manual QA engineer'),
	   ('Project Manager'),
	   ('Designer'),
	   ('HR'),
	   ('CEO'),
	   ('Sales manager'),
	   ('Junior Automation QA engineer'),
	   ('Middle  Automation QA engineer'),
	   ('Senior  Automation QA engineer');
	  

--	  Создать таблицу roles_employee
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
--Наполнить таблицу roles_employee 40 строками:
	  
	 
create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
foreign key (employee_id)
	references employees(id),
foreign key (role_id)
	references roles(id)
	);

insert into roles_employee(employee_id, role_id )
values (26, 2),
	   (22, 4),
	   (10, 1),
	   (23, 3),
	   (34, 10),
	   (11, 15),
	   (1, 11),
	   (5, 9),
	   (39, 5),
	   (33, 8),
	   (27, 12),
	   (9, 7),
	   (3, 17),
	   (65, 20),
	   (59, 16),
	   (44, 14),
	   (42, 19),
	   (14, 6),
	   (7, 13),
	   (8, 18),
	   (17, 3),
	   (31, 5),
	   (25, 11),
	   (13, 20),
	   (32, 2),
	   (51, 16),
	   (50, 8),
	   (46, 4),
	   (41, 1),
	   (29, 10),
	   (36, 15),
	   (16, 9),
	   (2, 7),
	   (18, 12),
	   (24, 17),
	   (38, 19),
	   (4, 6),
	   (56, 13),
	   (40, 14),
	   (55, 18);

--Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
	  
	    select e.employee_name, s.monthly_salary from employees e
	  	join employee_salary es on es.employee_id = e.id 
	  	join salary s on es.salary_id = s.id;
	  
--Вывести всех работников у которых ЗП меньше 2000.

	    select e.employee_name, s.monthly_salary from employees e
	  	join employee_salary es on es.employee_id = e.id 
	  	join salary s on es.salary_id = s.id where monthly_salary < 2000;
	  
--Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
	  
	    select salary.monthly_salary  from employee_salary 
	  	join salary on salary.id = employee_salary.salary_id 
	    join employees on employees.id = employee_salary.salary_id where employee_id >70; 
	  	
--Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
	   
	    select salary.monthly_salary  from employee_salary 
	  	join salary on salary.id = employee_salary.salary_id 
	    join employees on employees.id = employee_salary.salary_id where employee_id >70 and monthly_salary < 2000;
	   
--Найти всех работников кому не начислена ЗП.
	   	   
	   SELECT employees.employee_name FROM employees
       left JOIN employee_salary ON (employees.id = employee_salary.employee_id)
 	   WHERE employee_salary.employee_id  IS NULL; 
	   
--Вывести всех работников с названиями их должности.
	  
		select e.employee_name, r.role_name from employees e
	  	join roles_employee re on re.employee_id = e.id 
	  	join roles r on re.role_id = r.id;
	  
--Вывести имена и должность только Java разработчиков.
	  
	    select e.employee_name, r.role_name from employees e
	  	join roles_employee re on re.employee_id = e.id 
	  	join roles r on re.role_id = r.id where role_name like '%Java %';
	  
--Вывести имена и должность только Python разработчиков.

	    select e.employee_name, r.role_name from employees e
	  	join roles_employee re on re.employee_id = e.id 
	  	join roles r on re.role_id = r.id where role_name like '%Python%';
	  
--Вывести имена и должность всех QA инженеров.
	  
	    select e.employee_name, r.role_name from employees e
	  	join roles_employee re on re.employee_id = e.id 
	  	join roles r on re.role_id = r.id where role_name like '%QA%';

--Вывести имена и должность ручных QA инженеров.
	  
	    select e.employee_name, r.role_name from employees e
	  	join roles_employee re on re.employee_id = e.id 
	  	join roles r on re.role_id = r.id where role_name like '%Manual QA%';
	  
--Вывести имена и должность автоматизаторов QA
	  
	    select e.employee_name, r.role_name from employees e
	  	join roles_employee re on re.employee_id = e.id 
	  	join roles r on re.role_id = r.id where role_name like '%Automation QA%';
	  
-- Вывести имена и зарплаты Junior специалистов
	  
	    select e.employee_name, s.monthly_salary from employees e
	  	join roles_employee re on e.id = re.employee_id 
	  	join roles r on re.role_id = r.id  
	    join employee_salary es on e.id = es.employee_id 
	  	join salary s on s.id = es.salary_id where role_name like 'Junior%';
	  
--Вывести имена и зарплаты Middle специалистов
	  
	    select e.employee_name, s.monthly_salary from employees e
	  	join roles_employee re on re.employee_id = e.id 
	    join roles r on re.role_id = r.id
	  	join employee_salary es on e.id = es.employee_id 
	  	join salary s on es.salary_id = s.id  where role_name like 'Middle%';
	   
	  
--Вывести имена и зарплаты Senior специалистов
	  
	    select e.employee_name, s.monthly_salary from employees e
	  	join roles_employee re on re.employee_id = e.id 
	    join roles r on re.role_id = r.id
	  	join employee_salary es on e.id = es.employee_id 
	  	join salary s on es.salary_id = s.id  where role_name like 'Senior%';
	  
--Вывести зарплаты Java разработчиков
	  
	    select s.monthly_salary from employees e
	  	join roles_employee re on re.employee_id = e.id 
	    join roles r on re.role_id = r.id
	  	join employee_salary es on e.id = es.employee_id 
	  	join salary s on es.salary_id = s.id  where role_name like '%Java %';
	  
--Вывести зарплаты Python разработчиков
	  
	    select s.monthly_salary from employees e
	  	join roles_employee re on re.employee_id = e.id 
	    join roles r on re.role_id = r.id
	  	join employee_salary es on e.id = es.employee_id 
	  	join salary s on es.salary_id = s.id  where role_name like '%Python%';
	  
--Вывести имена и зарплаты Junior Python разработчиков
	  
	    select e.employee_name, s.monthly_salary from employees e
	  	join roles_employee re on re.employee_id = e.id 
	    join roles r on re.role_id = r.id
	  	join employee_salary es on e.id = es.employee_id 
	  	join salary s on es.salary_id = s.id  where role_name like 'Junior Python%';
	  
--Вывести имена и зарплаты Middle JS разработчиков
	  
	    select e.employee_name, s.monthly_salary from employees e
	  	join roles_employee re on re.employee_id = e.id 
	    join roles r on re.role_id = r.id
	  	join employee_salary es on e.id = es.employee_id 
	  	join salary s on es.salary_id = s.id  where role_name like 'Middle JS%';
	  
--Вывести имена и зарплаты Senior Java разработчиков
	  
	    select e.employee_name, s.monthly_salary from employees e
	  	join roles_employee re on re.employee_id = e.id 
	    join roles r on re.role_id = r.id
	  	join employee_salary es on e.id = es.employee_id 
	  	join salary s on es.salary_id = s.id  where role_name like 'Senior Java %';
	  
--Вывести зарплаты Junior QA инженеров
	  
	    select s.monthly_salary from employees e
	  	join roles_employee re on re.employee_id = e.id 
	    join roles r on re.role_id = r.id
	  	join employee_salary es on e.id = es.employee_id 
	  	join salary s on es.salary_id = s.id  where role_name like 'Junior%QA %';
	  
--Вывести среднюю зарплату всех Junior специалистов
	  
	    select avg (s.monthly_salary) from employees e
	  	join roles_employee re on re.employee_id = e.id 
	    join roles r on re.role_id = r.id
	  	join employee_salary es on e.id = es.employee_id 
	  	join salary s on es.salary_id = s.id  where role_name like 'Junior%';
	  
--Вывести сумму зарплат JS разработчиков
	  
	    select sum (s.monthly_salary) from employees e
	  	join roles_employee re on re.employee_id = e.id 
	    join roles r on re.role_id = r.id
	  	join employee_salary es on e.id = es.employee_id 
	  	join salary s on es.salary_id = s.id  where role_name like '%JavaScript%';
	  
--Вывести минимальную ЗП QA инженеров
	  
	    select min (s.monthly_salary) from employees e
	  	join roles_employee re on re.employee_id = e.id 
	    join roles r on re.role_id = r.id
	  	join employee_salary es on e.id = es.employee_id 
	  	join salary s on es.salary_id = s.id  where role_name like '%QA engineer%';
	  
--Вывести максимальную ЗП QA инженеров
	  
	    select max (s.monthly_salary) from employees e
	  	join roles_employee re on re.employee_id = e.id 
	    join roles r on re.role_id = r.id
	  	join employee_salary es on e.id = es.employee_id 
	  	join salary s on es.salary_id = s.id  where role_name like '%QA engineer%';
	  
--Вывести количество QA инженеров
	  
	    select count (r.role_name) from employees e
	  	join roles_employee re on re.employee_id = e.id 
	  	join roles r on re.role_id = r.id where role_name like '%QA engineer%';
	  
--Вывести количество Middle специалистов
	  
	    select count (r.role_name) from employees e
	  	join roles_employee re on re.employee_id = e.id 
	  	join roles r on re.role_id = r.id where role_name like 'Middle%';
	  
--Вывести количество разработчиков
	  
	    select count (r.role_name) from employees e
	  	join roles_employee re on re.employee_id = e.id 
	  	join roles r on re.role_id = r.id where role_name like '%developer%';
	  
--Вывести фонд (сумму) зарплаты разработчиков
	  
	    select sum (s.monthly_salary) from employees e
	  	join roles_employee re on re.employee_id = e.id 
	    join roles r on re.role_id = r.id
	  	join employee_salary es on e.id = es.employee_id 
	  	join salary s on es.salary_id = s.id  where role_name like '%developer%';
	  
--Вывести имена, должности и ЗП всех специалистов по возрастанию
	  
	    select employees.employee_name, roles.role_name, salary.monthly_salary from roles_employee
	  	join salary on salary.id = roles_employee.id
	    join employees on roles_employee.id = employees.id
	    join roles on roles_employee.id = roles.id 
	    join employee_salary on employee_salary.employee_id = roles.id; 
	    	  
--Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
	   
	    select employees.employee_name, roles.role_name,  salary.monthly_salary from roles_employee 
	   	join salary on roles_employee.id = salary.id and monthly_salary between 1700 and 2300
	    join employees on roles_employee.id = employees.id
	    join roles on roles_empl oyee.id = roles.id 
	    join employee_salary on employee_salary.employee_id = roles.id; 
	   
--Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
	   
	    select employees.employee_name, roles.role_name,  salary.monthly_salary from roles_employee 
	   	join salary on roles_employee.id = salary.id and  monthly_salary < 2300
	    join employees on roles_employee.id = employees.id
	    join roles on roles_employee.id = roles.id 
	    join employee_salary on employee_salary.employee_id = roles.id; 
	   
--Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000ddddd

	    select employees.employee_name, roles.role_name,  salary.monthly_salary from roles_employee 
	   	join salary on roles_employee.id = salary.id and  monthly_salary in (1100, 1500, 2000)
	    join employees on roles_employee.id = employees.id
	    join roles on roles_employee.id = roles.id 
	    join employee_salary on employee_salary.employee_id = roles.id; 
	   
	   