use employees;

-- cross join
-- connect all the data from dept_manager to all the data of departments

SELECT 
    m.*, d.*
FROM
    dept_manager m
        CROSS JOIN
    departments d -- ON m.emp_no = d.dept_no } not required
ORDER BY m.emp_no , d.dept_no;

-- old syntax without where gives cross join

SELECT 
    m.*, d.*
FROM
    dept_manager m,
    departments d
ORDER BY m.emp_no , d.dept_no;

-- or using new syntax inner join statement, without the linking fields will be treated as cross join

SELECT 
    m.*, d.*
FROM
    dept_manager m
        JOIN
    departments d
ORDER BY m.emp_no , d.dept_no;

SELECT 
    e.*, d.*
FROM
    departments d
        CROSS JOIN
    dept_manager dm
        INNER JOIN
    employees e ON dm.emp_no = e.emp_no
WHERE
    d.dept_no <> dm.dept_no
ORDER BY dm.emp_no , d.dept_no;

-- Use a CROSS JOIN to return a list with all possible combinations between managers from the dept_manager table and department number 9.
-- SELECT 
--     *
-- FROM
--     dept_manager;
SELECT 
    m.*, d.*
FROM
    dept_manager m
        CROSS JOIN
    departments d
WHERE
    d.dept_no = 'd009'
ORDER BY d.dept_no;

-- SELECT 
--     *
-- FROM
--     departments;

select * from employees;

SELECT 
    e.*, d.*
FROM
    employees e
        CROSS JOIN
    departments d
WHERE
    e.emp_no <= '10010'
ORDER BY e.emp_no;

