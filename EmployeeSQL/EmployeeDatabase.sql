--List the following details of each employee: employee number, last name, first name, gender, and salary.
select 
employees.emp_no,
employees.last_name,
employees.first_name,
employees.gender,
salaries.salary
from employees --perform inner join on salaries table with employees table using employee number to join data
inner join salaries on employees.emp_no = salaries.emp_no;


--List employees who were hired in 1986.
select *
from employees
where hire_date >= '1986-01-01' and hire_date <= '1986-12-31'; 


--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, 
--last name, first name, and start and end employment dates
select 
dept_manager.dept_no,
departments.dept_name,
dept_manager.emp_no,
employees.last_name,
employees.first_name,
dept_manager.from_date,
dept_manager.to_date
from dept_manager --perform inner joins across 3 tables using department number and employee number to connect the data
inner join departments on departments.dept_no = dept_manager.dept_no
inner join employees on employees.emp_no = dept_manager.emp_no;


--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
select
dept_emp.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
from employees --perform inner join across 3 tables using employee number and department number
inner join dept_emp on dept_emp.emp_no = employees.emp_no
inner join departments on departments.dept_no = dept_emp.dept_no;


--List all employees whose first name is "Hercules" and last names begin with "B."
select * 
from employees
where first_name = 'Hercules' and 
last_name like 'B%';


--List all employees in the Sales department, including their employee number, 
--last name, first name, and department name.
select
dept_emp.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
from employees --perform inner join across 3 tables using employee number and department number
inner join dept_emp on dept_emp.emp_no = employees.emp_no
inner join departments on departments.dept_no = dept_emp.dept_no
where departments.dept_name = 'Sales'; --filter data to only include employees in Sales department


--List all employees in the Sales and Development departments, including their employee number, 
--last name, first name, and department name.
select
dept_emp.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
from employees --perform inner join across 3 tables using employee number and department number
inner join dept_emp on dept_emp.emp_no = employees.emp_no
inner join departments on departments.dept_no = dept_emp.dept_no
where departments.dept_name in ('Sales', 'Development'); --filter data to only include employees in Sales and Development departments


--In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.
select 
last_name,
count(last_name)
from employees
group by last_name
order by count(last_name) desc;







