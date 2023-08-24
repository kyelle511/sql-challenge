SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
JOIN salaries as s ON
e.emp_no=s.emp_no

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1/1/1986' AND '12/31/1986'

SELECT m.emp_no, m.dept_no, d.dept_name,e.last_name, e.first_name
FROM dept_manager AS m
	JOIN departments AS d 
	ON (m.dept_no=d.dept_no)
		JOIN employees AS e
		ON (m.emp_no=e.emp_no);
	
SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS de
	JOIN employees AS e
	ON (de.emp_no=e.emp_no)
		JOIN departments AS d
		ON (de.dept_no=d.dept_no)

SELECT first_name, last_name, sex
FROM employees
WHERE first_name='Hercules'
	AND last_name LIKE 'B%'
	
SELECT emp_no, last_name, first_name
FROM employees
WHERE emp_no IN
(
	SELECT emp_no
	FROM dept_emp
	WHERE dept_no IN
	(
		SELECT dept_no
		FROM departments
		WHERE dept_name='Sales'
	)
);

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS de
	JOIN employees AS e
	ON (de.emp_no=e.emp_no)
		JOIN departments AS d
		ON (de.dept_no=d.dept_no)
		WHERE dept_name= 'Sales'
			OR dept_name='Development';

SELECT COUNT (last_name) AS last_name_total
FROM employees
GROUP BY last_name
ORDER BY last_name_total DESC;



