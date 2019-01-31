SELECT DISTINCT title
FROM titles;

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%E'
GROUP BY last_name;

SELECT DISTINCT last_name, first_name
FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%E';

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';

SELECT last_name, COUNT(last_name)
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY COUNT(last_name);

SELECT COUNT(*), gender
FROM employees
WHERE first_name IN ('Irena','Vidya', 'Maya')
GROUP BY gender;


