use employees;

-- getting the data ready for left join

-- removing the duplicate values, to avoid result infaltion.

-- Handling dept_manager_dup
DELETE FROM dept_manager_dup 
WHERE
    emp_no = '110228';
    
insert into dept_manager_dup
values( '110228', 'd003', '1992-03-21', '9999-01-01');

commit;

SELECT 
    *
FROM
    dept_manager_dup
ORDER BY emp_no ASC;

-- Handling departments_dup table

DELETE FROM departments_dup 
WHERE
    dept_no = 'd009';
    
insert into departments_dup
values('d009', 'Customer Service');

commit;

SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no ASC;

-- Applying Left Join

SELECT 
    m.dept_no,
    m.emp_no,
    IFNULL(d.dept_name,
            'Data Not present in departments_dup table') AS dept_name
FROM
    dept_manager_dup m
        LEFT JOIN -- or left join
    departments_dup d ON m.dept_no = d.dept_no
ORDER BY m.dept_no ASC;

-- obtaining the records belonging to the left table only out of the above queried records.
SELECT 
    m.dept_no,
    m.emp_no,
    IFNULL(d.dept_name,
            'Data not provided in right table') AS dept_name
FROM
    dept_manager_dup m
        LEFT JOIN
    departments_dup d ON m.dept_no = d.dept_no
WHERE
    d.dept_name IS NULL
ORDER BY m.dept_no ASC;
-- Applying left join on above same table but the order of tables will be inverted.

SELECT 
    d.dept_no, m.emp_no, d.dept_name
FROM
    departments_dup d
        LEFT JOIN -- or left outer join
    dept_manager_dup m ON d.dept_no = m.dept_no
ORDER BY d.dept_no ASC;

-- Exercise

-- Join the 'employees' and the 'dept_manager' tables to return a subset of all the employees whose last name is Markovitch. See if the output contains a manager with that name.  
select * from dept_manager;

SELECT 
    e.emp_no, e.first_name, e.last_name, d.dept_no, d.from_date
FROM
    employees e
        JOIN
    dept_manager d ON e.emp_no = d.emp_no
WHERE
    e.last_name = 'Markovitch'
ORDER BY d.dept_no DESC , e.emp_no ASC;
