use employees;

-- Making dept_manager_dup table

drop table if exists dept_manager_dup;

create table dept_manager_dup
(
	emp_no int(11) not null,
    dept_no char(4) null,
    from_date date not null,
    to_date date null
);

SELECT 
    *
FROM
    dept_manager_dup;
    
-- inserting data in this table from orignial table

insert into dept_manager_dup
select * from dept_manager;

-- inserting more values in table

insert into dept_manager_dup
(	
	emp_no,
	from_date
)
values
(999904, '2017-01-01'),
(999905, '2017-01-01'),
(999906, '2017-01-01'),
(999907, '2017-01-01');

-- deleting record for dpt_no d001

DELETE FROM dept_manager_dup 
WHERE
    dept_no = 'd001';
    
-- inserting one more record

insert into departments_dup
(
	dept_name
)
values
(
	'Public Relations'
);

DELETE FROM departments_dup 
WHERE
    dept_no = 'd002';
    
SELECT 
    *
FROM
    departments_dup;
    
-- DELETE FROM departments_dup 
-- WHERE
--     dept_name = 'Public Relations';

