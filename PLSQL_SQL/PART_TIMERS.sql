drop table PART_TIMERS;

CREATE TABLE PART_TIMERS (
    emp_id char(8)
    ,cumulative_working_hour number 
    
    ,CONSTRAINT PART_TIMERS_pk PRIMARY KEY(emp_id)
    ,CONSTRAINT PART_TIMERS_fk foreign key (emp_id) references PART_TIME_EMPLOYEES(emp_id)
    ,CONSTRAINT CHK_cum_work_hour CHECK ( cumulative_working_hour >= 0)
    );




--describe PART_TIMERS;

--alter table PART_TIMERS add (
--    CONSTRAINT PART_TIMERS_pk PRIMARY KEY(emp_id));

--alter table PART_TIMERS rename constraint PART_TIMERS_PK to PART_TIMERS_FK;

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
            table_name = 'PART_TIMERS'
        );

-------------------------------------------
------------- insert data -----------------
-------------------------------------------

select * from PART_TIMERS;
rollback;
commit;

delete from PART_TIMERS;



