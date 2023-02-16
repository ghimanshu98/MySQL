use employees;

SELECT 
    *
FROM
    departments_dup;
    
-- We want to deal with the null values
/*
in dept_name for null values show department name not provided
*/

-- IFNULL

SELECT 
    dept_no, IFNULL(dept_name, 'Data Not Provided') AS dept_name
FROM
    departments_dup;

-- COALESCE() with 2 exp acts like ifnull

SELECT 
    dept_no,
    COALESCE(dept_name, 'Data Not Provided') AS dept_name
FROM
    departments_dup;
    
-- COALESCE() with more then 2 args.

SELECT 
    dept_no,
    dept_name,
    COALESCE(dept_manager, dept_name, 'N/A') AS dept_manager
FROM
    departments_dup
ORDER BY dept_no ASC;

-- Coalesce() with single arg

SELECT 
    dept_no,
    dept_name,
    COALESCE('deartment mangaer name') AS fake_col
FROM
    departments_dup;
    
    
-- Select the department number and name from the ‘departments_dup’ table and add a third column where you name the department number (‘dept_no’) as ‘dept_info’. If ‘dept_no’ does not have a value, use ‘dept_name’.

SELECT 
    dept_no,
    dept_name,
    COALESCE(dept_no, dept_name, 'N/A') AS dept_info
FROM
    departments_dup
ORDER BY dept_no ASC;

-- Modify the code obtained from the previous exercise in the following way. Apply the IFNULL() function to the values from the first and second column, so that ‘N/A’ is displayed whenever a department number has no value, and ‘Department name not provided’ is shown if there is no value for ‘dept_name’.

SELECT 
    IFNULL(dept_no, 'N/A') AS dept_no,
    IFNULL(dept_name,
            'department name not provided') AS dept_name,
    COALESCE(dept_no, dept_name, 'N/A') AS dept_info
FROM
    departments_dup
ORDER BY dept_no ASC;