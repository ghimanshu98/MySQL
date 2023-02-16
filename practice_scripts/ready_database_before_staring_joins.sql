show tables from employees;
-- dropping dept_manager column from departments_dup
use employees;

alter table departments_dup
drop column dept_manager;

-- Then, use CHANGE COLUMN to change the ‘dept_no’ and ‘dept_name’ columns to NULL.

alter table departments_dup
change dept_name dept_name varchar(40) null;

alter table departments_dup
modify dept_no char(4) null;

-- Then, insert a record whose department name is “Public Relations”.
insert into departments_dup
(
	dept_name
)
values
(
	'Public Relations'
);



-- Delete the record(s) related to department number two.
select * from departments_dup;

DELETE FROM departments_dup 
WHERE
    dept_no = 'd002';
    
commit;