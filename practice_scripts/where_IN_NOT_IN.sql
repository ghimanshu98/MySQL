use employees;

SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Cathie'
        OR first_name = 'Nathan'
        OR first_name = 'Mark';
        
-- samething using IN operator

SELECT 
    *
FROM
    employees
WHERE
    first_name IN ('Cathie' , 'Mark', 'Nathan');
    
-- NOT IN operator

SELECT 
    *
FROM
    employees
WHERE
    first_name NOT IN ('Cathie' , 'Mark', 'Nathan');


-- Use the IN operator to select all individuals from the “employees” table, whose first name is either “Denis”, or “Elvis”.

SELECT 
    *
FROM
    employees
WHERE
    first_name IN ('Denis' , 'Elvis');
    
-- Extract all records from the ‘employees’ table, aside from those with employees named John, Mark, or Jacob.

SELECT 
    *
FROM
    employees
WHERE
    first_name NOT IN ('John' , 'Mark', 'jacob');