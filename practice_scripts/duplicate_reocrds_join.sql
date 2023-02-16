use employees;

-- adding duplicate record

insert into dept_manager_dup
values ('110228', 'd003', '1992-02-21', '9999-01-01');

insert into departments_dup
values ('d009', 'Customer Service');

-- checking the tables
SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no ASC;

SELECT 
    *
FROM
    dept_manager_dup
ORDER BY emp_no ASC;

-- UPDATE dept_manager_dup 
-- SET 
--     from_date = '1992-03-01'
-- WHERE
--     emp_no = 110228;
-- commit;-- 

-- applying inner join on table containing duplicate records.

SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        INNER JOIN
    departments_dup d ON m.dept_no = d.dept_no
ORDER BY m.dept_no;

-- removing duplicate values : group by the field that differs the most among the records or apply distinct on the field if group by not working.

SELECT DISTINCT
    m.emp_no, m.dept_no, d.dept_name
FROM
    dept_manager_dup m
        INNER JOIN
    departments_dup d ON m.dept_no = d.dept_no
ORDER BY m.dept_no;