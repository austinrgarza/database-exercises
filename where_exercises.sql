USE employees;

SELECT *
FROM employees
     # WHERE first_name IN ('Irena', 'Vidya', 'Maya');
WHERE (first_name = 'Irenta'
  OR first_name = 'Vidya'
  OR first_name = 'Maya')
  AND gender = 'M';

SELECT *
FROM employees
WHERE last_name LIKE ('E%');

SELECT *
FROM employees
WHERE last_name like 'E%' OR last_name like '%E';

SELECT *
FROM employees
WHERE last_name like 'E%E';

SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

SELECT *
FROM employees
Where birth_date like '%-12-31';

SELECT *
FROM employees
WHERE last_name like '%q%';

SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
  AND birth_date like '%-12-25';

SELECT *
FROM employees
WHERE last_name like '%Q%'
  AND last_name NOT LIKE '%QU%';
