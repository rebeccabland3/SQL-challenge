-- drop table titles;

create table titles(
	title_id varchar(50),
	title varchar (100),
	primary key (title_id));

-- drop table employees;

create table employees(
	emp_no varchar(10) primary key,
	emp_title_id varchar(50),
	birth_date date,
	first_name varchar(50), 
	last_name varchar(50),
	sex varchar(20),
	hire_date date,
	foreign key (emp_title_id) references titles(title_id));
	

-- drop table departments;

create table departments(
	dept_no varchar(10) primary key, 
	dept_name varchar(50));

-- drop table dept_manager;

create table dept_manager(
	dept_no varchar(10),
	emp_no varchar(10), 
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no));

-- drop table dept_emp;

create table dept_emp(
	emp_no varchar(10),
	dept_no varchar(10), 
	foreign key (dept_no) references departments(dept_no));
-- foreign key (emp_no) references departments(emp_no));
-- employee data doesnt have a ton of these id's so foreign key not yet created

drop table salaries;

create table salaries(
	emp_no varchar(10),
	salary int);
--	foreign key (emp_no) references employees(emp_no));