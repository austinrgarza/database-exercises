use employees;

select concat(e.first_name, ' ', e.last_name) as full_name, d.dept_name
from employees as e
join dept_emp as dm
  on dm.emp_no = e.emp_no
join departments as d
  on d.dept_no = dm.dept_no
where dm.to_date > current_date ()
order by dm.to_date;


# select dept.dept_name as 'departnemt name',concat(e.first_name, ' ', e.last_name) as 'manager name'
# from departments as dept
# join dept_manager as dm
#   on dept.dept_no = dm.dept_no;

select departments.dept_name as 'department name', concat(employees.first_name, + ' ', employees.last_name), gender
  from employees
join dept_manager on dept_manager.emp_no = employees.emp_no
join departments on departments.dept_no = dept_manager.dept_no
where to_date > now()
and employees.gender = 'f';

select titles.title, count(*)
from titles
join dept_emp on titles.emp_no = dept_emp.emp_no
join departments on departments.dept_no = dept_emp.dept_no
where dept_emp.to_date > now()
and titles.to_date > now()
and departments.dept_name = 'customer service'
group by titles.title;

select departments.dept_no as 'department name',
       concat(managers.first_name, ' ', managers.last_name) as 'name',
      salaries.salary as 'salary'
from employees as managers
join dept_manager on dept_manager.emp_no = managers.emp_no
join salaries on salaries.emp_no = managers.emp_no
join departments on departments.dept_no = dept_manager.dept_no
where salaries.to_date > now()
and dept_manager.to_date > now();

SELECT concat(employees.first_name, ' ', employees.last_name) AS 'employee''s name', departments.dept_name as 'Department Name',
       concat(Managers.first_name, ' ', Managers.last_name)
FROM employees
JOIN dept_emp on dept_emp.emp_no = employees.emp_no
JOIN departments ON departments.dept_no = dept_emp.dept_no
JOIN dept_manager ON dept_manager.dept_no = departments.dept_no
JOIN employees AS Managers
  ON Managers.emp_no = dept_manager.dept_no
WHERE dept_emp.to_date > NOW()
AND dept_manager.to_date > NOW();
