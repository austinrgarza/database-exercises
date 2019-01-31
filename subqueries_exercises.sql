-- lists all employees with the same hire date as emplotee 101010
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    where emp_no = 101010
    );
-- all titles held by people named Aamod
SELECT *
FROM titles
WHERE emp_no IN (
SELECT emp_no
FROM employees
WHERE first_name = 'Aamod'
);
-- CURRENT dept managers who are F
SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
SELECT emp_no
FROM dept_manager
WHERE gender = 'f' and to_date > now()
);

-- bonus one
select dept_name
from departments
where dept_no IN (
  select dept_no
  from dept_manager
  where to_date > now()
  and
  emp_no IN (
    select emp_no
    from employees
    where gender = 'F'
  )
);
-- bonus 2
SELECT first_name, last_name
  FROM employees
WHERE emp_no = (
SELECT emp_no
  from salaries
  WHERE salary in (
SELECT max(salary)
  FROM salaries
  )
);