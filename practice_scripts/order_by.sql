use employees;

-- order by -- by default in ASC or ascending order.
SELECT 
    *
FROM
    employees
ORDER BY first_name;

SELECT 
    *
FROM
    employees
ORDER BY first_name ASC;

-- order by - descending order (DESC)

SELECT 
    *
FROM
    employees
ORDER BY first_name DESC;

SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC;

-- order by using multiple fields

SELECT 
    *
FROM
    employees
ORDER BY first_name,last_name ASC;

SELECT 
    *
FROM
    employees
ORDER BY last_name,first_name DESC;

-- Select all data from the “employees” table, ordering it by “hire date” in descending order.

SELECT 
    *
FROM
    employees
ORDER BY hire_date DESC;