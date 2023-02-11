use employees;

SELECT 
    *
FROM
    employees
LIMIT 5;

insert into employees
(emp_no, birth_date, first_name, last_name, gender, hire_date)
values ( 999901, '1986-04-21', 'John', 'Smith', 'M', '2011-01-01');

SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC;

insert into employees
values
(
	999903,
    '1997-09-14',
    'Johnathan',
    'Creek',
    'M',
    '1999-10-01'
);

-- Select ten records from the “titles” table to get a better idea about its content.
SELECT 
    *
FROM
    titles
LIMIT 10;

-- Then, in the same table, insert information about employee number 999903. State that he/she is a “Senior Engineer”, who has started working in this position on October 1st, 1997.



insert into titles
(
	emp_no,
    title,
    from_date
)
values
(
	999903,
    'Senior Engineer',
    '1997-10-01'
);

SELECT 
    *
FROM
    titles
ORDER BY emp_no DESC;

-- Insert information about the individual with employee number 999903 into the “dept_emp” table. He/She is working for department number 5, and has started work on  October 1st, 1997; her/his contract is for an indefinite period of time.
SELECT 
    *
FROM
    dept_emp
ORDER BY emp_no DESC;


insert into dept_emp
(	
	emp_no,
	dept_no,
    from_date,
    to_date)
values
(	
	999903,
	'd005',
	'1997-10-01',
	'1999-01-01'
);

-- Inserting INTO new table from other table

-- 1) create a table
create table if not exists departments_dup
(
	dept_no char(4) not null,
    dept_name varchar(48) not null
); 

-- inserting into department dup table from deptartments table.alter

insert into departments_dup
(
	dept_no, 
    dept_name
)
select dept_no, dept_name 
from departments;


select * from departments_dup;

-- Create a new department called “Business Analysis”. Register it under number ‘d010’.

insert into departments
values
(
	'd010',
    'Business Analyst'
);

SELECT 
    *
FROM
    departments;
