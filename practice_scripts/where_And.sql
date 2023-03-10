use employees;

SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Denis' AND gender = 'M';
    
-- Retrieve a list with all female employees whose first name is Kellie.

SELECT 
    *
FROM
    employees
WHERE
    gender = 'F' AND first_name = 'Kellie'