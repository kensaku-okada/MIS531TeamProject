drop table INTERNS;

CREATE TABLE INTERNS (
    emp_id char(8)
    ,intern_start_date date not null
    ,intern_end_date date
    
    ,CONSTRAINT INTERNS_pk PRIMARY KEY(emp_id)
    ,CONSTRAINT INTERNS_fk foreign key (emp_id) references PART_TIME_EMPLOYEES(emp_id)
    ,CONSTRAINT CHK_intern_end CHECK ( intern_end_date >= intern_start_date )
    );


--describe INTERNS;

--alter table INTERNS add (
--    CONSTRAINT INTERNS_pk PRIMARY KEY(emp_id));

--alter table INTERNS rename constraint INTERNS_PK to INTERNS_FK;

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
            table_name = 'INTERNS'
        );

-------------------------------------------
------------- insert data -----------------
-------------------------------------------

select * from INTERNS;
rollback;
commit;

delete from INTERNS;



