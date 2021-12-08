--������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employees.employee_name, salary.monthly_salary 
from employees 
	join employee_salary on employees.id = employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id ;
	
--������� ���� ���������� � ������� �� ������ 2000
select employees.employee_name, salary.monthly_salary 
from employees 
	join employee_salary on employees.id = employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id
where salary.monthly_salary < 2000;

--������� ��� ���������� �������, �� �������� �� ��� �� ��������.(�� ����, �� �� ������� ��� � ��������.)
select salary.monthly_salary, employees.employee_name
from employees  
	right join employee_salary on employee_salary.employee_id = employees.id
	join salary on employee_salary.salary_id = salary.id 
	where employees.employee_name is null;
	
--������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select salary.monthly_salary, employees.employee_name
from employees  
	right join employee_salary on employee_salary.employee_id = employees.id
	join salary on employee_salary.salary_id = salary.id 
	where employees.employee_name is null and salary.monthly_salary < 2000;
	
--����� ���� ���������� ���� �� ��������� ��.
select employees.employee_name, salary.monthly_salary 
from employees 
	join employee_salary on employees.id = employee_salary.employee_id
	left join salary on employee_salary.salary_id = salary.id
where salary_id > 15
	select * from employees as e 
		left join employee_salary as es 
		on e.id = es.id 
	where es.salary_id is null;

--������� ���� ���������� � ���������� �� ���������.
select employees.employee_name, roles.role_title 
from employees 
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
where roles.role_title like '%Junior%';

--������� ����� � ��������� ������ Java �������������.
select employees.employee_name, roles.role_title 
from employees 
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
	where roles.role_title like '%Java %';
	
--������� ����� � ��������� ������ Python �������������.
select employees.employee_name, roles.role_title 
from employees 
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
	where roles.role_title like '%Python %';
	
--������� ����� � ��������� ���� QA ���������.
select employees.employee_name, roles.role_title 
from employees 
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
	where roles.role_title like '%QA%';
	
--������� ����� � ��������� ������ QA ���������.
select employees.employee_name, roles.role_title 
from employees 
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
	where roles.role_title like '%Manual QA%';

--������� ����� � ��������� ��������������� QA
select employees.employee_name, roles.role_title 
from employees 
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
	where roles.role_title like '%Automation QA%';
	
--������� ����� � �������� Junior ������������
select employees.employee_name, roles.role_title, salary.monthly_salary
from employees 
	join employee_salary on employees.id = employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
where roles.role_title like '%Junior%';

--������� ����� � �������� Middle ������������
select employees.employee_name, roles.role_title, salary.monthly_salary
from employees 
	join employee_salary on employees.id = employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
where roles.role_title like '%Middle%';

--������� ����� � �������� Senior ������������
select employees.employee_name, roles.role_title, salary.monthly_salary
from employees 
	join employee_salary on employees.id = employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
where roles.role_title like '%Senior%';

--������� �������� Java �������������
select roles.role_title, salary.monthly_salary
from employees 
	join employee_salary on employees.id = employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
where roles.role_title like '%Java %';

--������� �������� Python �������������
select roles.role_title, salary.monthly_salary
from employees 
	join employee_salary on employees.id = employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
where roles.role_title like '%Python %';

--������� ����� � �������� Junior Python �������������
select employees.employee_name, roles.role_title, salary.monthly_salary
from employees 
	join employee_salary on employees.id = employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
where roles.role_title like '%Junior Python%';

--������� ����� � �������� Middle JS �������������
select employees.employee_name, roles.role_title, salary.monthly_salary
from employees 
	join employee_salary on employees.id = employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
where roles.role_title like '%Middle JavaS%';

--������� ����� � �������� Senior Java �������������
select employees.employee_name, roles.role_title, salary.monthly_salary
from employees 
	join employee_salary on employees.id = employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
where roles.role_title like '%Senior Java %';

--������� �������� Junior QA ���������
select employees.employee_name, roles.role_title, salary.monthly_salary
from employees 
	join employee_salary on employees.id = employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
where roles.role_title like '%Junior% QA %';

--������� ������� �������� ���� Junior ������������
select avg(salary.monthly_salary)
from employees 
	join employee_salary on employees.id = employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
where roles.role_title like '%Junior%';

--������� ����� ������� JS �������������
select sum(salary.monthly_salary)
from employees 
	join employee_salary on employees.id = employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
where roles.role_title like '%JavaS%';

--������� ����������� �� QA ���������
select min(salary.monthly_salary)
from employees 
	join employee_salary on employees.id = employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
where roles.role_title like '%QA%';

--������� ������������ �� QA ���������
select max(salary.monthly_salary)
from employees 
	join employee_salary on employees.id = employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
where roles.role_title like '%QA%';

--������� ���������� QA ���������
select count(employees.id)
from employees 
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
where roles.role_title like '%QA%';

--������� ���������� Middle ������������.
select count(employees.id)
from employees 
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
where roles.role_title like '%Middle%';

--������� ���������� �������������
select count(employees.id)
from employees 
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
where roles.role_title like '%dev%';

--������� ���� (�����) �������� �������������.
select sum(salary.monthly_salary)
from employees 
	join employee_salary on employees.id = employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
where roles.role_title like '%dev%';

--������� �����, ��������� � �� ���� ������������ �� �����������
select employees.employee_name, roles.role_title, salary.monthly_salary
from employees 
	join employee_salary on employees.id = employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
order by salary.monthly_salary;

--������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select employees.employee_name, roles.role_title, salary.monthly_salary
from employees 
	join employee_salary on employees.id = employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
where salary.monthly_salary between 1700 and 2300
order by salary.monthly_salary;

--������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employees.employee_name, roles.role_title, salary.monthly_salary
from employees 
	join employee_salary on employees.id = employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
where salary.monthly_salary < 2300
order by salary.monthly_salary;

--������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employees.employee_name, roles.role_title, salary.monthly_salary
from employees 
	join employee_salary on employees.id = employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id
	join roles_employee on employees.id = roles_employee.employee_id
	join roles on roles_employee.role_id = roles.id 
where salary.monthly_salary in (1100, 1500, 2000)
order by salary.monthly_salary;












