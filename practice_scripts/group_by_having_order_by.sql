use employees;

-- where
SELECT 
    *
FROM
    employees
WHERE
    hire_date >= '2000-01-01';
    

-- having 
SELECT 
    *
FROM
    employees
HAVING hire_date >= '2000-01-01';

-- where v/s having

-- Question
-- Extract all names that appear more than 250 times in the employees table?

SELECT 
    first_name, COUNT(first_name) AS name_counts
FROM
    employees
WHERE
    COUNT(first_name) > 250
GROUP BY first_name
ORDER BY first_name ASC;
    
-- this code giving error, when aggregate functions are combined with where block.

SELECT 
    first_name, COUNT(first_name) AS name_counts
FROM
    employees
GROUP BY first_name
HAVING COUNT(first_name) > 250
ORDER BY first_name ASC;

-- Select all employees whose average salary is higher than $120,000 per annum.
-- Hint: You should obtain 101 records.

select * from salaries;

SELECT
    *, AVG(salary)
FROM
    salaries
WHERE
    salary > 120000
GROUP BY emp_no
ORDER BY emp_no;

SELECT 
    emp_no, avg(salary)
FROM
    salaries
GROUP BY emp_no
HAVING AVG(salary) > 120000;
