use employees;

-- extract a list of all names that are encountered less than 200 times.
-- Let the data refer to the people hired after the 1st of january 1999.

SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees
WHERE
    hire_date > '1999-01-01'
GROUP BY first_name
HAVING COUNT(first_name) < 200
ORDER BY first_name ASC;

-- Select the employee numbers of all individuals who have signed more than 1 contract after the 1st of January 2000.
-- Hint: To solve this exercise, use the “dept_emp” table.

select * from dept_emp;

SELECT 
    emp_no
FROM
    dept_emp
WHERE
    from_date > '2000-01-01'
GROUP BY emp_no
HAVING COUNT(from_date) > 1
ORDER BY emp_no ASC; 

