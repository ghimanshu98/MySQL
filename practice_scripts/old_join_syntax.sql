use employees;

-- old join syntax 

SELECT 
    m.emp_no, m.dept_no, d.dept_name
FROM
    dept_manager_dup m,
    departments_dup d
WHERE
    m.dept_no = d.dept_no
ORDER BY m.dept_no;

-- the same operation can be done using inner join

SELECT 
    m.emp_no, m.dept_no, d.dept_name
FROM
    dept_manager_dup m
        INNER JOIN
    departments_dup d ON m.dept_no = d.dept_no
ORDER BY m.dept_no;

-- Exercise
-- Extract a list containing information about all managers’ employee number, first and last name, department number, and hire date. Use the old type of join syntax to obtain the result.
SELECT 
    e.emp_no, e.first_name, e.last_name, d.dept_no, e.hire_date
FROM
    employees e,
    dept_manager d
WHERE
    e.emp_no = d.emp_no
ORDER BY emp_no ASC;