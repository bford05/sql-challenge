create table employees (
	emp_no int PRIMARY KEY,
	birth_date date,
	first_name character varying (50),
	last_name character varying (50),
	gender character varying (5),
	hire_date date
);


create table departments (
	dept_no varchar PRIMARY KEY,
	dept_name character varying (50)
);

create table dept_emp (
	dept_emp_id SERIAL PRIMARY KEY,
	emp_no int,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	dept_no varchar,
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	from_date date,
	to_date date
);

BULK INSERT dept_emp
 FROM 'C:\Users\siris\Documents\UR-RICH-DATA-PT-01-2020-U-C\09-SQL\HW\Instructions\data\dept_emp.csv'
 WITH
 (
 FIELDTERMINATOR = ',',
 ROWTERMINATOR = '\n'
 )


create table dept_manager (
	dept_manager_id SERIAL PRIMARY KEY,
	dept_no varchar,
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	emp_no int,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	from_date date,
	to_date date
);

create table salaries (
	salary_id SERIAL PRIMARY KEY,
	emp_no int,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	salary int,
	from_date date,
	to_date date
);

create table titles (
	title_id SERIAL PRIMARY KEY,
	emp_no int,
	title character varying (50),
	from_date date,
	to_date date
);




