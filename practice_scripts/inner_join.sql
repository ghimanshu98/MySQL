use employees;

SELECT 
    *
FROM
    dept_manager_dup
ORDER BY dept_no ASC;

SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no ASC;

-- INNER JOIN --

SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        INNER JOIN
    departments_dup d ON m.dept_no = d.dept_no
ORDER BY m.dept_no ASC ;

-- Extract a list containing information about all managers’ employee number, first and last name, department number, and hire date. 

select * from dept_manager; 
-- > from_date and hire_date

select * from employees;
-- > emp_no, first_name, last_name

SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    d.dept_no,
    e.hire_date
FROM
    employees e
        INNER JOIN
    dept_manager d ON e.emp_no = d.emp_no
ORDER BY e.emp_no ASC;