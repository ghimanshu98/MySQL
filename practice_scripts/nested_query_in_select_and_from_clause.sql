use employees;

-- Nested query in SELECT clause
-- Assign employee number 110022 as a manager for all employees from 10001 to 10020, and employee number 110039 as  a manager to all employees from 10021 to 10040.
SELECT 
    e.emp_no AS employee_ID,
    MIN(de.dept_no) AS dept_code,
    (SELECT 
            emp_no
        FROM
            dept_manager
        WHERE
            emp_no = '110022') AS manager_ID
FROM
    employees e
        INNER JOIN
    dept_emp de ON e.emp_no = de.emp_no
WHERE
    e.emp_no <= 10020
GROUP BY e.emp_no  -- using because we used MIN() function to get a single dept_no, as one emp can be assigned to different departments also.
ORDER BY e.emp_no;

SELECT 
    e.emp_no AS employee_ID,
    MIN(de.dept_no) AS dept_code,
    (SELECT 
            emp_no
        FROM
            dept_manager
        WHERE
            emp_no = '110039') AS manager_ID
FROM
    employees e
        INNER JOIN
    dept_emp de ON e.emp_no = de.emp_no
WHERE
    e.emp_no BETWEEN '10021' AND '10040'
GROUP BY e.emp_no
ORDER BY e.emp_no;

-- combining the above code using UNION

SELECT 
    A.*
FROM
    (SELECT 
        e.emp_no AS employee_ID,
            MIN(de.dept_no) AS dept_code,
            (SELECT 
                    emp_no
                FROM
                    dept_manager
                WHERE
                    emp_no = '110022') AS manager_ID
    FROM
        employees e
    INNER JOIN dept_emp de ON e.emp_no = de.emp_no
    WHERE
        e.emp_no <= 10020
    GROUP BY e.emp_no
    ORDER BY e.emp_no) AS A 
UNION SELECT 
    B.*
FROM
    (SELECT 
        e.emp_no AS employee_ID,
            MIN(de.dept_no) AS dept_code,
            (SELECT 
                    emp_no
                FROM
                    dept_manager
                WHERE
                    emp_no = '110039') AS manager_ID
    FROM
        employees e
    INNER JOIN dept_emp de ON e.emp_no = de.emp_no
    WHERE
        e.emp_no BETWEEN '10021' AND '10040'
    GROUP BY e.emp_no
    ORDER BY e.emp_no) AS B;
    
    
-- exercise

-- Starting your code with “DROP TABLE”, create a table called “emp_manager” (emp_no – integer of 11, not null; dept_no – CHAR of 4, null; manager_no – integer of 11, not null). 

drop table if exists emp_manager;

CREATE TABLE emp_manager (
    emp_no INT(11) NOT NULL,
    dept_no CHAR(4) NULL,
    manager_no INT(11) NOT NULL
);

SELECT 
    *
FROM
    emp_manager;
    
commit;


/*
Fill emp_manager with data about employees, the number of the department they are working in, and their managers.

Your query skeleton must be:

Insert INTO emp_manager SELECT

U.*

FROM

                 (A)

UNION (B) UNION (C) UNION (D) AS U;

A and B should be the same subsets used in the last lecture (SQL Subqueries Nested in SELECT and FROM). In other words, assign employee number 110022 as a manager to all employees from 10001 to 10020 (this must be subset A), and employee number 110039 as a manager to all employees from 10021 to 10040 (this must be subset B).

Use the structure of subset A to create subset C, where you must assign employee number 110039 as a manager to employee 110022.

Following the same logic, create subset D. Here you must do the opposite - assign employee 110022 as a manager to employee 110039.

Your output must contain 42 rows.
*/

INSERT 
	INTO emp_manager
SELECT 
	U.* 
from 
	(SELECT 
		A.*
	FROM
		(SELECT 
			e.emp_no AS employee_ID,
				MIN(de.dept_no) AS dept_code,
				(SELECT 
						emp_no
					FROM
						dept_manager
					WHERE
						emp_no = '110022') AS manager_ID
		FROM
			employees e
		INNER JOIN dept_emp de ON e.emp_no = de.emp_no
		WHERE
			e.emp_no <= 10020
		GROUP BY e.emp_no
		ORDER BY e.emp_no) AS A 
	UNION SELECT 
		B.*
	FROM
		(SELECT 
			e.emp_no AS employee_ID,
				MIN(de.dept_no) AS dept_code,
				(SELECT 
						emp_no
					FROM
						dept_manager
					WHERE
						emp_no = '110039') AS manager_ID
		FROM
			employees e
		INNER JOIN dept_emp de ON e.emp_no = de.emp_no
		WHERE
			e.emp_no BETWEEN '10021' AND '10040'
		GROUP BY e.emp_no
		ORDER BY e.emp_no) AS B
	UNION
	SELECT 
		C.*
	FROM
		(SELECT 
			e.emp_no AS employee_ID,
				MIN(de.dept_no) AS dept_code,
				(SELECT 
						emp_no
					FROM
						dept_manager
					WHERE
						emp_no = '110039') AS manager_ID
		FROM
			employees e
		INNER JOIN dept_emp de ON e.emp_no = de.emp_no
		WHERE
			e.emp_no = '110022'
		GROUP BY e.emp_no
		ORDER BY e.emp_no) AS C 
	UNION SELECT 
		D.*
	FROM
		(SELECT 
			e.emp_no AS employee_ID,
				MIN(de.dept_no) AS dept_code,
				(SELECT 
						emp_no
					FROM
						dept_manager
					WHERE
						emp_no = '110022') AS manager_ID
		FROM
			employees e
		INNER JOIN dept_emp de ON e.emp_no = de.emp_no
		WHERE
			e.emp_no = '110039'
		GROUP BY e.emp_no
		ORDER BY e.emp_no) AS D) as U;
        
SELECT 
    *
FROM
    emp_manager;