use employees;

SELECT 
    e.gender, AVG(s.salary) AS salary
FROM
    employees e
        INNER JOIN
    salaries s ON e.emp_no = s.emp_no
GROUP BY gender;

