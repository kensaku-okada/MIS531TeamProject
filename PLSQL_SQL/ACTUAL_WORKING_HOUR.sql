drop table ACTUAL_WORKING_HOUR;

CREATE TABLE ACTUAL_WORKING_HOUR (
    emp_id char(8)
    ,working_date date
    ,actual_working_hour number
    
    ,CONSTRAINT ACTUAL_WORKING_HOUR_pk PRIMARY KEY(emp_id, working_date)
    ,CONSTRAINT ACTUAL_WORKING_HOUR_fk foreign key (emp_id) references PART_TIMERS(emp_id)
    ,CONSTRAINT CHK_act_work_hour CHECK ( actual_working_hour  >= 0)
    );


--describe ACTUAL_WORKING_HOUR;

--alter table ACTUAL_WORKING_HOUR add (
--    CONSTRAINT ACTUAL_WORKING_HOUR_pk PRIMARY KEY(emp_id));

--alter table ACTUAL_WORKING_HOUR rename constraint ACTUAL_WORKING_HOUR_PK to ACTUAL_WORKING_HOUR_FK;

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
            table_name = 'ACTUAL_WORKING_HOUR'
        );

-------------------------------------------
------------- insert data -----------------
-------------------------------------------

select * from ACTUAL_WORKING_HOUR;
rollback;
commit;

delete from ACTUAL_WORKING_HOUR;



