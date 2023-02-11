use employees;

-- count()
SELECT 
    COUNT(emp_no)
FROM
    employees;
    
SELECT 
    COUNT(first_name)
FROM
    employees
WHERE
    first_name IS NOT NULL;
    
-- count(distinct)

SELECT 
    COUNT(DISTINCT first_name)
FROM
    employees;
    
    
-- How many annual contracts with a value higher than or equal to $100,000 have been registered in the salaries table?

SELECT 
    COUNT(salary)
FROM
    salaries
WHERE
    salary >= 100000;
    
-- OR
    
SELECT 
    COUNT(*)
FROM
    salaries
WHERE
    salary >= 100000;
    
-- How many managers do we have in the “employees” database? Use the star symbol (*) in your code to solve this exercise.

SELECT 
    COUNT(title)
FROM
    titles
WHERE
    title = 'Manager';
    
-- OR

SELECT 
    COUNT(*)
FROM
    dept_manager;