use employees;

-- Count() Aggregate function

SELECT 
    *
FROM
    salaries;
    
-- will return a count but will ignore the null values if present in field of interest.
SELECT 
    COUNT(salary)
FROM
    salaries;
    
-- will return the total number of records present including the null values
SELECT 
    COUNT(*)
FROM
    salaries;
    
-- count distinct values present in the field of interest
SELECT 
    COUNT(DISTINCT from_date)
FROM
    salaries;
    
-- How many departments are there in the “employees” database?
SELECT 
    COUNT(distinct dept_no)
FROM
    dept_emp;
    
-- -------------------------------------------
-- Sum()

SELECT 
    SUM(salary)
FROM
    salaries; 

-- What is the total amount of money spent on salaries for all contracts starting after the 1st of January 1997?
   
SELECT 
    SUM(salary)
FROM
    salaries
WHERE
    from_date > '1997-01-01';
    
-- -------------------------------------------

-- MAX() and  MIN()

SELECT 
    MAX(salary)
FROM
    salaries;
    
SELECT 
    MIN(salary)
FROM
    salaries; 
    
    
-- 1. Which is the lowest employee number in the database?

SELECT 
    MAX(emp_no)
FROM
    employees;
    
SELECT 
    MIN(emp_no)
FROM
    employees;
    
-- -------------------------------------------
-- AVG()

SELECT 
    AVG(salary)
FROM
    salaries;
  
-- What is the average annual salary paid to employees who started after the 1st of January 1997?

SELECT 
    AVG(salary)
FROM
    salaries
WHERE
    from_date > '1997-01-01';
    
-- -------------------------------------------
-- ROUND(arg, decimals)

-- if no second arg passed in round function then it will round off the value to nearest integer.
SELECT 
    ROUND(AVG(salary))
FROM
    salaries;
    
-- round() with 2 args
SELECT 
    ROUND(AVG(salary), 2)
FROM
    salaries;
    
-- Round the average amount of money spent on salaries for all contracts that started after the 1st of January 1997 to a precision of cents.

SELECT 
    ROUND(AVG(salary), 2)
FROM
    salaries
WHERE
    from_date > '1997-01-01';