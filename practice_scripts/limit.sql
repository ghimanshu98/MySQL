use employees;

-- fetch the employee numbers of the 10 hihest paid employees in the database.

SELECT 
    *
FROM
    salaries
ORDER BY salary DESC
LIMIT 10;

-- Select the first 100 rows from the ‘dept_emp’ table.
SELECT 
    *
FROM
    dept_emp
LIMIT 100;