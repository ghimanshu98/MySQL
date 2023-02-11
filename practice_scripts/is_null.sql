use employees;

-- is not null

SELECT 
    *
FROM
    employees
WHERE
    first_name IS NOT NULL;
    
-- is null
    
SELECT 
    *
FROM
    employees
WHERE
    first_name IS NULL;
    
-- Select the names of all departments whose department number value is not null.

-- SELECT 
--     dept_name
-- FROM
--     departments
-- WHERE
--     dept_no IS NOT NULL;
    
SELECT 
    dept_name
FROM
    departments
WHERE
    dept_no IS NULL;