use employees;
commit;

SELECT 
    *
FROM
    employees
WHERE
    emp_no = 999903;
    
SELECT 
    *
FROM
    titles
WHERE
    emp_no = 999903; 

-- deleting the above emp record using where condition
DELETE FROM employees 
WHERE
    emp_no = 999903;
    
SELECT 
    *
FROM
    employees
WHERE
    emp_no = 999903;
    
SELECT 
    *
FROM
    titles
WHERE
    emp_no = 999903; 
    
rollback;

-- delete without using where condition

SELECT 
    *
FROM
    departments_dup;
    
commit;

DELETE FROM departments_dup;

rollback;

-- Remove the department number 10 record from the “departments” table.

SELECT 
    *
FROM
    departments;
    
DELETE FROM departments 
WHERE
    dept_no = 'd010';
    
commit;
    