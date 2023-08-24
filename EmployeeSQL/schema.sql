DROP TABLE IF EXISTS departments CASCADE;
DROP TABLE IF EXISTS titles CASCADE;
DROP TABLE IF EXISTS employees CASCADE;
DROP TABLE IF EXISTS salaries CASCADE;
DROP TABLE IF EXISTS dept_emp CASCADE;
DROP TABLE IF EXISTS dept_manager CASCADE;

CREATE TABLE departments(
	dept_no VARCHAR(10)PRIMARY KEY NOT NULL,
	dept_name VARCHAR(30)
);

CREATE TABLE titles (
	title_id VARCHAR(10)PRIMARY KEY NOT NULL,
	title VARCHAR(30)
);

CREATE TABLE employees (
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR(10) NOT NULL,
	birth_date DATE,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	sex VARCHAR(1),
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary MONEY,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(10),
	PRIMARY KEY (emp_no,dept_no),
	FOREIGN KEY (emp_no)REFERENCES employees(emp_no)
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(10)NOT NULL,
	emp_no INT NOT NULL,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);



