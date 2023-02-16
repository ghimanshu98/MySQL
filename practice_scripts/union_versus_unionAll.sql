use employees;

-- getting data ready

drop table if exists employees_dup;

CREATE TABLE employees_dup (
    emp_no INT(11),
    birth_date DATE,
    first_name VARCHAR(14),
    last_name VARCHAR(16),
    gender ENUM('M', 'F'),
    hire_date DATE
);

-- inserting data in table

insert into employees_dup
select 
	* 
from 
	employees 
limit 20;

SELECT 
    *
FROM
    employees_dup;
    
commit;

-- inserting a duplicate row with emp_no == 10001

insert into employees_dup
SELECT 
    *
FROM
    employees
WHERE
    emp_no = '10001';
    
SELECT 
    *
FROM
    employees_dup;
    
commit;
-- ---------------------------------------

-- UNION ALL

SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    NULL AS dept_no,  -- we need to create null columns at runtime for columns that do not exist in either of tables
    NULL AS from_date
FROM
    employees_dup e
WHERE
    e.emp_no = '10001' 
UNION ALL SELECT 
    NULL AS emp_no,
    NULL AS first_name,
    NULL AS last_name,
    m.dept_no,
    m.from_date
FROM
    dept_manager m;
    
-- -------------------------------------------------
-- UNION

SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    NULL AS dept_no,
    NULL AS from_date
FROM
    employees_dup e
WHERE
    e.emp_no = '10001' 
UNION SELECT 
    NULL AS emp_no,
    NULL AS first_name,
    NULL AS last_name,
    m.dept_no,
    m.from_date
FROM
    dept_manager m;
    
-- exercise

SELECT 
    *
FROM
    (SELECT 
        e.emp_no,
            e.first_name,
            e.last_name,
            NULL AS dept_no,
            NULL AS from_date
    FROM
        employees e
    WHERE
        last_name = 'Denis' UNION SELECT 
        NULL AS emp_no,
            NULL AS first_name,
            NULL AS last_name,
            dm.dept_no,
            dm.from_date
    FROM
        dept_manager dm) AS a
ORDER BY - a.emp_no DESC; -- putting a negative sign reverse the descending order to ascending order.