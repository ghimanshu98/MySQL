use employees;

SELECT 
    d.dept_name, AVG(s.salary) AS avg_dept_salary
FROM
    employees e
        INNER JOIN
    dept_manager dm ON e.emp_no = dm.emp_no
        INNER JOIN
    departments d ON dm.dept_no = d.dept_no
        INNER JOIN
    salaries s ON e.emp_no = s.emp_no
GROUP BY d.dept_name
ORDER BY d.dept_name;

-- or

SELECT 
    d.dept_name, AVG(s.salary) AS avg_dept_salary
FROM
    dept_manager dm
        INNER JOIN
    departments d ON dm.dept_no = d.dept_no
        INNER JOIN
    salaries s ON dm.emp_no = s.emp_no
GROUP BY d.dept_name
ORDER BY avg_dept_salary desc;

-- more filtered

SELECT 
    d.dept_name, AVG(s.salary) AS avg_dept_salary
FROM
    dept_manager dm
        INNER JOIN
    departments d ON dm.dept_no = d.dept_no
        INNER JOIN
    salaries s ON dm.emp_no = s.emp_no
GROUP BY d.dept_name
HAVING avg_dept_salary > 60000
ORDER BY avg_dept_salary DESC;

-- How many male and how many female managers do we have in the ‘employees’ database?

SELECT 
    e.gender, COUNT(gender) AS gender_count
FROM
    employees e
        INNER JOIN
    titles t ON e.emp_no = t.emp_no
WHERE
    t.title = 'Manager'
GROUP BY e.gender
ORDER BY gender_count ASC;

-- or
SELECT 
    e.gender, COUNT(gender) AS gender_count
FROM
    employees e
        INNER JOIN
    dept_manager dm ON e.emp_no = dm.emp_no
GROUP BY e.gender
ORDER BY gender_count ASC;