use employees;

-- equal to
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Mark';
    
-- not equal to (<> or !=)
SELECT 
    *
FROM
    employees
WHERE
    first_name != 'Mark';
    
-- greatet than
SELECT 
    *
FROM
    employees
WHERE
    hire_date > '2000-01-01';
    
-- greatet than or equal to
SELECT 
    *
FROM
    employees
WHERE
    hire_date >= '2000-01-01';
    
-- less than
SELECT 
    *
FROM
    employees
WHERE
    hire_date < '1985-02-01';
    
-- less than or equal to
SELECT 
    *
FROM
    employees
WHERE
    hire_date <= '1985-02-01';
    
-- Retrieve a list with data about all female employees who were hired in the year 2000 or after.

SELECT 
    *
FROM
    employees
WHERE
    gender = 'F'
        AND hire_date > '2000-01-01';
        
-- Extract a list with all employees’ salaries higher than $150,000 per annum.

SELECT 
    *
FROM
    salaries
WHERE
    salary > 150000;