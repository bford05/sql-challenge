create table employees (
	emp_no int NOT NULL,
	birth_date date,
	first_name character varying (50) NOT NULL,
	last_name character varying (50) NOT NULL,
	gender character varying (5) NOT NULL, 
	hire_date date,
	CONSTRAINT pk_emp_no PRIMARY KEY (emp_no)
);


create table departments (
	dept_no varchar NOT NULL,
	dept_name character varying (50) NOT NULL,
	CONSTRAINT pk_dept_no PRIMARY KEY (dept_no)
);


create table dept_emp (
	emp_no int NOT NULL,
	dept_no varchar NOT NULL,
	from_date date,
	to_date date,
	CONSTRAINT pk_emp_dept_no PRIMARY KEY (emp_no, dept_no)
);


create table dept_manager (
	dept_no varchar NOT NULL,
	emp_no int NOT NULL,
	from_date date,
	to_date date, 
	CONSTRAINT pk_emp_no_dept_manager PRIMARY KEY (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);


create table salaries (
	emp_no int NOT NULL,
	salary int NOT NULL,
	from_date date,
	to_date date,
	CONSTRAINT pk_emp_no_salaries PRIMARY KEY (emp_no)
);


create table titles (
	emp_no int NOT NULL,
	title character varying (50) NOT NULL,
	from_date date,
	to_date date,
	CONSTRAINT pk_emp_no_title_from_date PRIMARY KEY (emp_no, title, from_date)
);







