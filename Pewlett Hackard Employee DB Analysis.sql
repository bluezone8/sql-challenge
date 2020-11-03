DATA ANALYSIS

1
SELECT emp.emp_no, emp.last_name, emp.first_name, emp.sex, sal.salary FROM employees AS emp
INNER JOIN salaries AS sal ON emp.emp_no=sal.emp_no;

2
SELECT first_name, last_name, hire_date FROM employees
WHERE hire_date LIKE '%86%';

3
SELECT departments.dept_no, departments.dept_name, dept_mgr.emp_no, employees.last_name, employees.first_name FROM departments
INNER JOIN dept_mgr ON departments.dept_no=dept_mgr.dept_no
INNER JOIN employees ON dept_mgr.emp_no=employees.emp_no;

4
SELECT emp.emp_no, emp.last_name, emp.first_name, dep.dept_name FROM employees AS emp
INNER JOIN dept_emp ON emp.emp_no=dept_emp.emp_no
INNER JOIN departments AS dep ON dept_emp.dept_no=dep.dept_no;

5
SELECT emp.first_name, emp.last_name, emp.sex FROM employees AS emp
WHERE emp.first_name='Hercules' AND emp.last_name LIKE 'B%';

6
SELECT emp.emp_no, emp.last_name, emp.first_name, dep.dept_name FROM employees AS emp
INNER JOIN dept_emp ON emp.emp_no=dept_emp.emp_no
INNER JOIN departments AS dep ON dept_emp.dept_no=dep.dept_no
WHERE dep.dept_name='Sales';

7
SELECT emp.emp_no, emp.last_name, emp.first_name, dep.dept_name FROM employees AS emp
INNER JOIN dept_emp ON emp.emp_no=dept_emp.emp_no
INNER JOIN departments AS dep ON dept_emp.dept_no=dep.dept_no
WHERE dep.dept_name='Sales' OR dep.dept_name='Development';

8
SELECT last_name, COUNT(last_name) AS nam_cnt FROM employees
GROUP BY last_name
ORDER BY nam_cnt DESC;

BONUS
SELECT titles.title, ROUND(AVG(salaries.salary),2) FROM titles
INNER JOIN employees ON employees.emp_title_id=titles.title_id
INNER JOIN salaries ON employees.emp_no=salaries.emp_no
GROUP BY titles.title
ORDER BY ROUND(AVG(salaries.salary),2) DESC;

JUST FOR FUN
SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name, titles.title, salaries.salary FROM employees 
INNER JOIN dept_emp ON employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON dept_emp.dept_no=departments.dept_no
INNER JOIN titles ON employees.emp_title_id=titles.title_id
INNER JOIN salaries ON employees.emp_no=salaries.emp_no
WHERE employees.emp_no=499942;

