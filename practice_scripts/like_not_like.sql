use employees;

-- Like with %-> substitute for a sequence
SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Mar%'); -- Name starting with MAR
    
SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('%Mar'); -- name ending with MAR
    
SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('%Mar%'); -- name having mar in between
    
-- Like with _ -> substitute for a single character

SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Mar_'); -- name starting with mar having 4 letters
    
SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('_Ma'); -- name ending with ma having 3 letters
    
SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Ma_k');
    
-- NOT LIKE operator with % -> sequence of char

SELECT 
    *
FROM
    employees
WHERE
    first_name NOT LIKE ('%mar');
    
-- NOT LIKE operator with _ -> single char

SELECT 
    *
FROM
    employees
WHERE
    first_name NOT LIKE ('_ark'); -- all names other then all 4 letter name ending with ark
    
-- Working with the “employees” table, use the LIKE operator to select the data about all individuals, whose first name starts with “Mark”; specify that the name can be succeeded by any sequence of characters.

SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Mark%');
    
-- Retrieve a list with all employees who have been hired in the year 2000. 

SELECT 
    *
FROM
    employees
WHERE
    hire_date LIKE ('%2000%');
    
-- Retrieve a list with all employees whose employee number is written with 5 characters, and starts with “1000”. 

SELECT 
    *
FROM
    employees
WHERE
    emp_no LIKE ('1000_');

