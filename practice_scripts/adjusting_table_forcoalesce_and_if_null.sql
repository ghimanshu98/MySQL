-- COALESCE()

-- Doing some adjustments to get started.
SELECT 
    *
FROM
    departments_dup;
    
-- changing the dept_name column structure to allow null values
alter table departments_dup
modify dept_name varchar(40) null;

-- inserting some null values
insert into departments_dup
(
		dept_no
)
values
(
		'd010'
),
(
		'd011'
);
SELECT 
    *
FROM
    departments_dup;
    
-- adding a third column in the table
alter table departments_dup
add column dept_manager varchar(40) null after dept_name;

SELECT 
    *
FROM
    departments_dup;
    
commit;