drop table PART_TIME_EMPLOYEES;

CREATE TABLE PART_TIME_EMPLOYEES (
    emp_id char(8)
    ,hourly_wage NUMBER not null
    ,part_time_employment_type varchar2(20) not null
    
    ,CONSTRAINT PART_TIME_EMPLOYEES_pk PRIMARY KEY(emp_id)
    ,CONSTRAINT PART_TIME_EMPLOYEES_fk foreign key (emp_id) references EMPLOYEES(emp_id)
    ,CONSTRAINT CHK_hourly_wage CHECK (hourly_wage >= 0)
    ,CONSTRAINT CHK_part_emp_type CHECK ( part_time_employment_type IN ('part_timer', 'intern'))
    );


--describe PART_TIME_EMPLOYEES;

--alter table PART_TIME_EMPLOYEES add (
--    CONSTRAINT PART_TIME_EMPLOYEES_pk PRIMARY KEY(emp_id));

--alter table PART_TIME_EMPLOYEES rename constraint PART_TIME_EMPLOYEES_PK to PART_TIME_EMPLOYEES_FK;

SELECT * FROM user_constraints order by table_name;

--search the tables which refer to the tables you are interested in 
SELECT
    constraint_name,
    table_name,
    status
FROM
    user_constraints
WHERE
    r_constraint_name IN
        (
        SELECT
            constraint_name
        FROM
            user_constraints
        WHERE
--            table_name = 'table name'
            table_name = 'PART_TIME_EMPLOYEES'
        );

-------------------------------------------
------------- insert data -----------------
-------------------------------------------

select * from PART_TIME_EMPLOYEES;
rollback;
commit;

delete from PART_TIME_EMPLOYEES;



