--department table
CREATE TABLE department AS d (
    dept_no VARCHAR(100) NOT NULL PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL
);

--dept_emp table
CREATE TABLE dept_emp AS de (
    emp_no INT NOT NULL,
    dept_no VARCHAR(100) NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES department (dept_no)
);

--dept_manager table
CREATE TABLE dept_manager AS dm (
    dept_no VARCHAR(100) NOT NULL,
    emp_no INT NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES department (dept_no)
);

--employee table
CREATE TABLE employees AS e (
    emp_no INT NOT NULL PRIMARY KEY,
    emp_title_id VARCHAR(100) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    sex VARCHAR(1) NOT NULL,
    hire_date DATE NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);

--salaries table
CREATE TABLE salaries AS s (
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    PRIMARY KEY (emp_no, salary),
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

--titles table
CREATE TABLE titles AS t (
    title_id VARCHAR(100) NOT NULL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
);
