
DROP TABLE IF EXISTS employees
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

 
CREATE TABLE employees(
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(5)  NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY(emp_no)
	--FOREIGN KEY(emp_title_id)
);

SELECT * FROM employees

CREATE TABLE departments(
	dept_no VARCHAR(5) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(50) NOT NULL
);

SELECT * FROM departments

CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(5) NOT NULL REFERENCES departments(dept_no),
	PRIMARY KEY(emp_no, dept_no)
);

SELECT * FROM dept_emp




CREATE TABLE dept_manager (
	dept_no VARCHAR(5) NOT NULL,
	emp_no INT NOT NULL,
	PRIMARY KEY(dept_no, emp_no)
);

SELECT * FROM dept_emp


CREATE TABLE salaries(
	emp_no INT PRIMARY KEY NOT NULL,
	salary INT
);

SELECT * FROM salaries


CREATE TABLE titles(
	title_id VARCHAR(5),
	title VARCHAR(30),
	PRIMARY KEY (title_id)
	
);

SELECT * FROM titles
