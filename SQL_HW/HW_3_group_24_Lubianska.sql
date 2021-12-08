--Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employees.employee_name, salary.monthly_salary 
from employees 
	join employee_salary on employees.id = employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id ;
	
--Вывести всех работников у которых ЗП меньше 2000
select employees.employee_name, salary.monthly_salary 
from employees 
	join employee_salary on employees.id = employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id
where salary.monthly_salary < 2000;

--Вывести все зарплатные позиции, но работник по ним не назначен.(ЗП есть, но не понятно кто её получает.)
select salary.monthly_salary, employees.employee_name
from employees  
	right join employee_salary on employee_salary.employee_id = employees.id
	join salary on employee_salary.salary_id = salary.id 
	where employees.employee_name is null;
	
--Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select salary.monthly_salary, employees.employee_name
from employees  
	right join employee_salary on employee_salary.employee_id = employees.id
	join salary on employee_salary.salary_id = salary.id 
	where employees.employee_name is null and salary.monthly_salary < 2000;
	
--Найти всех работников кому не начислена ЗП.
select employees.employee_name, salary.monthly_salary 
from employees 
	join employee_salary on employees.id = employee_salary.employee_id
	left join salary on employee_salary.salary_id = salary.id
where salary_id > 15
	select * from employees as e 
		left join employee_salary as es 
		on e.id = es.id 
	where es.salary_id is null;

--Вывести всех работников с названиями их должности.
select employees.employee_name, roles.role_title 
from employees 
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
where roles.role_title like '%Junior%';

--Вывести имена и должность только Java разработчиков.
select employees.employee_name, roles.role_title 
from employees 
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
	where roles.role_title like '%Java %';
	
--Вывести имена и должность только Python разработчиков.
select employees.employee_name, roles.role_title 
from employees 
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
	where roles.role_title like '%Python %';
	
--Вывести имена и должность всех QA инженеров.
select employees.employee_name, roles.role_title 
from employees 
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
	where roles.role_title like '%QA%';
	
--Вывести имена и должность ручных QA инженеров.
select employees.employee_name, roles.role_title 
from employees 
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
	where roles.role_title like '%Manual QA%';

--Вывести имена и должность автоматизаторов QA
select employees.employee_name, roles.role_title 
from employees 
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
	where roles.role_title like '%Automation QA%';
	
--Вывести имена и зарплаты Junior специалистов
select employees.employee_name, roles.role_title, salary.monthly_salary
from employees 
	join employee_salary on employees.id = employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
where roles.role_title like '%Junior%';

--Вывести имена и зарплаты Middle специалистов
select employees.employee_name, roles.role_title, salary.monthly_salary
from employees 
	join employee_salary on employees.id = employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
where roles.role_title like '%Middle%';

--Вывести имена и зарплаты Senior специалистов
select employees.employee_name, roles.role_title, salary.monthly_salary
from employees 
	join employee_salary on employees.id = employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
where roles.role_title like '%Senior%';

--Вывести зарплаты Java разработчиков
select roles.role_title, salary.monthly_salary
from employees 
	join employee_salary on employees.id = employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
where roles.role_title like '%Java %';

--Вывести зарплаты Python разработчиков
select roles.role_title, salary.monthly_salary
from employees 
	join employee_salary on employees.id = employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
where roles.role_title like '%Python %';

--Вывести имена и зарплаты Junior Python разработчиков
select employees.employee_name, roles.role_title, salary.monthly_salary
from employees 
	join employee_salary on employees.id = employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
where roles.role_title like '%Junior Python%';

--Вывести имена и зарплаты Middle JS разработчиков
select employees.employee_name, roles.role_title, salary.monthly_salary
from employees 
	join employee_salary on employees.id = employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
where roles.role_title like '%Middle JavaS%';

--Вывести имена и зарплаты Senior Java разработчиков
select employees.employee_name, roles.role_title, salary.monthly_salary
from employees 
	join employee_salary on employees.id = employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
where roles.role_title like '%Senior Java %';

--Вывести зарплаты Junior QA инженеров
select employees.employee_name, roles.role_title, salary.monthly_salary
from employees 
	join employee_salary on employees.id = employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
where roles.role_title like '%Junior% QA %';

--Вывести среднюю зарплату всех Junior специалистов
select avg(salary.monthly_salary)
from employees 
	join employee_salary on employees.id = employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
where roles.role_title like '%Junior%';

--Вывести сумму зарплат JS разработчиков
select sum(salary.monthly_salary)
from employees 
	join employee_salary on employees.id = employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
where roles.role_title like '%JavaS%';

--Вывести минимальную ЗП QA инженеров
select min(salary.monthly_salary)
from employees 
	join employee_salary on employees.id = employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
where roles.role_title like '%QA%';

--Вывести максимальную ЗП QA инженеров
select max(salary.monthly_salary)
from employees 
	join employee_salary on employees.id = employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
where roles.role_title like '%QA%';

--Вывести количество QA инженеров
select count(employees.id)
from employees 
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
where roles.role_title like '%QA%';

--Вывести количество Middle специалистов.
select count(employees.id)
from employees 
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
where roles.role_title like '%Middle%';

--Вывести количество разработчиков
select count(employees.id)
from employees 
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
where roles.role_title like '%dev%';

--Вывести фонд (сумму) зарплаты разработчиков.
select sum(salary.monthly_salary)
from employees 
	join employee_salary on employees.id = employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
where roles.role_title like '%dev%';

--Вывести имена, должности и ЗП всех специалистов по возрастанию
select employees.employee_name, roles.role_title, salary.monthly_salary
from employees 
	join employee_salary on employees.id = employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
order by salary.monthly_salary;

--Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select employees.employee_name, roles.role_title, salary.monthly_salary
from employees 
	join employee_salary on employees.id = employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
where salary.monthly_salary between 1700 and 2300
order by salary.monthly_salary;

--Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select employees.employee_name, roles.role_title, salary.monthly_salary
from employees 
	join employee_salary on employees.id = employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
where salary.monthly_salary < 2300
order by salary.monthly_salary;

--Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select employees.employee_name, roles.role_title, salary.monthly_salary
from employees 
	join employee_salary on employees.id = employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
where salary.monthly_salary in (1100, 1500, 2000)
order by salary.monthly_salary;












