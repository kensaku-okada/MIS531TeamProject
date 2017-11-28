drop table SCHEDULED_WORKING_HOUR;

CREATE TABLE SCHEDULED_WORKING_HOUR (
    emp_id char(8)
    ,working_date date
    ,scheduled_working_hour number
    
    ,CONSTRAINT SCHEDULED_WORKING_HOUR_pk PRIMARY KEY(emp_id, working_date)
    ,CONSTRAINT SCHEDULED_WORKING_HOUR_fk foreign key (emp_id) references PART_TIMERS(emp_id)
    ,CONSTRAINT CHK_sch_work_hour CHECK ( scheduled_working_hour >= 0)
    );









--describe SCHEDULED_WORKING_HOUR;

--alter table SCHEDULED_WORKING_HOUR add (
--    CONSTRAINT SCHEDULED_WORKING_HOUR_pk PRIMARY KEY(emp_id));

--alter table SCHEDULED_WORKING_HOUR rename constraint SCHEDULED_WORKING_HOUR_PK to SCHEDULED_WORKING_HOUR_FK;

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
            table_name = 'SCHEDULED_WORKING_HOUR'
        );

-------------------------------------------
------------- insert data -----------------
-------------------------------------------

select * from SCHEDULED_WORKING_HOUR;
rollback;
commit;

delete from SCHEDULED_WORKING_HOUR;



