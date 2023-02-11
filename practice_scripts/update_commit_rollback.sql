 use employees;
 
 SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC;

-- Updating details with where condition

UPDATE employees 
SET 
    first_name = 'Stella',
    last_name = 'Parkinsons',
    birth_date = '1990-12-31',
    gender = 'F'
WHERE
    emp_no = 999901;
    
commit;

-- Update without where

select * from departments_dup;

UPDATE departments_dup 
SET 
    dept_no = 'd011',
    dept_name = 'Quality Control';
    
select * from departments_dup;

rollback;

select * from departments_dup;

commit;

-- Change the “Business Analysis” department name to “Data Analysis”.
-- To solve this exercise, use the “departments” table.

select * from departments;

UPDATE departments 
SET 
    dept_name = 'Data Analysis'
WHERE
    dept_no = 'd010';
    
select * from departments;

commit;