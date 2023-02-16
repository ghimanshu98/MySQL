use employees;

-- RIGHT JOINS or inverted left joins
SELECT 
    *
FROM
    departments_dup;

SELECT 
    d.dept_no, d.dept_name, m.emp_no
FROM
    dept_manager_dup m
        RIGHT JOIN
    departments_dup d ON m.dept_no = d.dept_no
ORDER BY d.dept_no ASC;

-- perforimg right join thru left join
SELECT 
    d.dept_no, d.dept_name, m.emp_no
FROM
    departments_dup d
        LEFT JOIN
    dept_manager_dup m ON d.dept_no = m.dept_no
ORDER BY d.dept_no ASC;

