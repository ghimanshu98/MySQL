use employees;

-- joining more then 2 tables

SELECT 
    e.first_name,
    e.last_name,
    e.hire_date,
    dm.from_date,
    d.dept_name
FROM
    employees e
        INNER JOIN
    dept_manager dm ON e.emp_no = dm.emp_no
        INNER JOIN
    departments d ON dm.dept_no = d.dept_no
ORDER BY e.first_name, e.last_name ASC;

-- Select all managers’ first and last name, hire date, job title, start date, and department name.

SELECT 
    e.first_name,
    e.last_name,
    e.hire_date,
    t.title,
    dm.from_date,
    d.dept_name
FROM
    employees e
        INNER JOIN
    titles t ON e.emp_no = t.emp_no
        INNER JOIN
    dept_manager dm ON e.emp_no = dm.emp_no
        INNER JOIN
    departments d ON dm.dept_no = d.dept_no
WHERE
    t.title = 'Manager'
ORDER BY e.first_name; 

-- or

SELECT 
    e.first_name,
    e.last_name,
    e.hire_date,
    t.title,
    m.from_date,
    d.dept_name
FROM
    employees e
        JOIN
    dept_manager m ON e.emp_no = m.emp_no
        JOIN
    departments d ON m.dept_no = d.dept_no
        JOIN
    titles t ON e.emp_no = t.emp_no
        AND m.from_date = t.from_date
ORDER BY e.emp_no;