
--List the following details of each employee: 
--employee number, last name, first name, gender, and salary.

Select 
employees.emp_no,
employees.last_name,
employees.first_name,
employees.gender ,
salaries.salary
from employees 
inner join salaries on employees.emp_no = salaries.emp_no ; 


--List employees who were hired in 1986.
--Select * from employees;
Select 
first_name,
last_name,
hire_date
from employees where 

hire_date in 
(
	SELECT hire_date
    FROM employees
    WHERE hire_date LIKE '%1986%'
);

--List the manager of each department with the following information: department number,
--department name, the manager's employee number,
--last name, first name, and start and end employment dates.
--Select * from dept_manager;

Select 
dept_manager.dept_no,
departments.dept_name,
employees.emp_no,
employees.last_name,
employees.first_name,
dept_manager.from_date,
dept_manager.to_date
from dept_manager 
inner join departments on departments.dept_no = dept_manager.dept_no
inner join employees on dept_manager.emp_no = employees.emp_no ; 

--List the department of each employee with the following information:
--employee number, last name, first name, and department name.
--Select * from employees;

Select 
employees.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
from employees 
inner join dept_emp on dept_emp.emp_no = employees.emp_no
inner join departments on dept_emp.dept_no = departments.dept_no ; 

--List all employees whose first name is "Hercules" and last names begin with "B."
Select 
employees.first_name,
employees.last_name
from employees where employees.first_name ='Hercules' and employees.last_name like 'B%';

--List all employees in the Sales department,
--including their employee number, last name, first name, and department name.
Select 
employees.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
from employees 
inner join dept_emp on dept_emp.emp_no = employees.emp_no
inner join departments on dept_emp.dept_no = departments.dept_no
where departments.dept_name = 'Sales'; 

--List all employees in the Sales and Development departments,
--including their employee number, last name, first name, and department name.

Select 
employees.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
from employees 
inner join dept_emp on dept_emp.emp_no = employees.emp_no
inner join departments on dept_emp.dept_no = departments.dept_no
where departments.dept_name in ('Sales', 'Development'); 

--In descending order, list the frequency count of employee 
--last names, i.e., how many employees share each last name.
Select 
employees.last_name, count (last_name) as frequency 
from employees
group by employees.last_name 
order by frequency desc;