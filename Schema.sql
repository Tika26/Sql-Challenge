--Create tables for each CSV
--import all CSV files
CREATE TABLE departments(
	dept_no VARCHAR (30) PRIMARY KEY,
	dept_name VARCHAR (30)
);

CREATE TABLE titles(
	title_id VARCHAR (30) PRIMARY KEY,
	title VARCHAR (30)
);

CREATE TABLE employees(
	emp_no INTEGER PRIMARY KEY,
	emp_title_id VARCHAR (255) NOT NULL,
	birth_date VARCHAR (255) NOT NULL,
	first_name VARCHAR (255) NOT NULL,
	last_name VARCHAR (255) NOT NULL,
	sex VARCHAR (255) NOT NULL,
	hire_date VARCHAR (255) NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE dept_emp(
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR (255) NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager(
	dept_no VARCHAR (255) NOT NULL,
	emp_no INTEGER NOT NULL,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries(
	emp_no INTEGER PRIMARY KEY,
	salary INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

--Check all tables 
SELECT * FROM departments;
SELECT * FROM titles;
SELECT * FROM employees;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM salaries;

