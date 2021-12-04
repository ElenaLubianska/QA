select role_title,employee_name,monthly_salary from roles_employee join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
		join salary on salary.id = employee_salary.salary_id 
		join roles on roles.id = role_id 
		join employees on employees.id = roles_employee.employee_id;

--select * from employee_salary join salary on employee_salary.id = salary.id join employees on employees.id = employee_salary.id

