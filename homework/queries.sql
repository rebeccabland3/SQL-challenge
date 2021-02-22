--query 1
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary from employees e
join salaries s on s.emp_no = e.emp_no
order by e.emp_no;

--query 2
select first_name, last_name, hire_date from employees e
where e.hire_date BETWEEN '1986-01-01'AND '1986-12-31';

--query 3
select d.dept_no, d.dept_name, e.emp_no, e.first_name, e.last_name from employees e
join dept_manager dm on dm.emp_no = e.emp_no
join departments d on d.dept_no = dm.dept_no

--query 4
select e.emp_no, e.last_name, e.first_name, d.dept_name from employees e
join dept_emp de on de.emp_no = e.emp_no
join departments d on d.dept_no = de.dept_no
order by e.emp_no

--query 5
select * from employees e
where first_name = 'Hurcules'

--query 6
select e.emp_no, e.last_name, e.first_name, d.dept_name from employees e
join dept_emp de on de.emp_no = e.emp_no
join departments d on d.dept_no = de.dept_no
where dept_name = 'Sales'
order by e.emp_no

--query 7
select e.emp_no, e.last_name, e.first_name, d.dept_name from employees e
join dept_emp de on de.emp_no = e.emp_no
join departments d on d.dept_no = de.dept_no
where dept_name = 'Sales' or dept_name = 'Development'
order by e.emp_no

--query 8
select last_name, count(*) as employee_count from employees e
group by last_name
